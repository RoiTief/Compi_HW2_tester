(* expects tag_parser to complete successfully
 * 'test' - original s-expression
 * 'expected_result' - output of (Tag_Parser.sprint_expr () (Tag_Parser.tag_parser (Reader.nt_sexpr test 0))) if tagged successfully
 * *)
type tp_success_test = {test: string; expected_result: string};;

(* expects tag_parser to raise exception during parsing
 * 'test' - original s-expression
 * *)
type tp_failure_test = {test: string};;

let tp_success_tests = [
  {test = "(letrec () (+ 1 2) (- 2 1))"; expected_result = "(let () (begin (+ 1 2) (- 2 1)))"};
  {test = "(and 1)"; expected_result = "1"};
  {test = "(and)" ; expected_result = "#t"}
];;

let tp_failure_tests = [
  {test = "(let (and 5) and)"};
  {test = "(define and 5)"}
];;

