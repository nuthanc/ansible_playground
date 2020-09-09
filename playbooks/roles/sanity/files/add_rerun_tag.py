# from subprocess import check_output
import re
import failure_tc
# def get_file(method_name):
#   file_grepped = check_output(f'grep -r "def {method_name}" | head -1', shell=True, universal_newlines=True).strip()
#   file = file_grepped.split(':')[0]
#   return file
def parse(method_name, file, tag='rerun'):
  # file = get_file(method_name)
  with open(file, 'r') as f:
    config_file = f.read()

  pattern = r"(@test.attr\(type=\[)(.*)(\]\W+.*\W+def " + method_name +")"
  tagged_code = re.sub(pattern, rf"\1\2, '{tag}'\3", config_file, re.M)
  if tagged_code:
    with open(file, 'w') as f:
      f.write(tagged_code)


failure_tc.parse_data()

for i, tc in enumerate(failure_tc.tc_list):
  parse(tc, failure_tc.loc_list[i])
