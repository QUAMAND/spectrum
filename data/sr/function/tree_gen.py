import os

# --- 설정 (프로젝트 구조에 맞게 수정됨) ---
BASE_FOLDER = "tree"         # 생성될 폴더 이름
NAMESPACE = "sr"            # 데이터팩 네임스페이스
FUNCTION_PATH = "src/link/tree" # 네임스페이스 뒤의 실제 경로

# 폴더 생성
if not os.path.exists(BASE_FOLDER):
   os.makedirs(BASE_FOLDER)

def generate_tree(start, end):
   # 파일 이름 설정
   filename = f"{start}_{end}.mcfunction"
   filepath = os.path.join(BASE_FOLDER, filename)
   
   with open(filepath, "w", encoding="utf-8") as f:
   # 마지막 노드 (검색 완료)
      if start == end:
      # 16진수 두 자리 변환 (0 -> 00, 15 -> 0f, 255 -> ff)
         hex_val = f"{start:02x}"
         f.write(f'data modify storage sr:output hex set value "{hex_val}"')
         return

   # 범위 분할 (이진 탐색)
   mid = (start + end) // 2
   
   left_range = f"{start}" if start == mid else f"{start}..{mid}"
   left_func = f"{start}_{mid}"
   f.write(f'execute if score #temp spectrum matches {left_range} run function {NAMESPACE}:{FUNCTION_PATH}/{left_func}\n')
   generate_tree(start, mid)
   
   # 오른쪽 범위 탐색
   right_range = f"{end}" if mid + 1 == end else f"{mid+1}..{end}"
   right_func = f"{mid+1}_{end}"
   f.write(f'execute if score #temp spectrum matches {right_range} run function {NAMESPACE}:{FUNCTION_PATH}/{right_func}')
   generate_tree(mid + 1, end)

# 실행
generate_tree(0, 255)