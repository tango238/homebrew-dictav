#include <stdio.h>
#include <mruby.h>
#include <mruby/proc.h>
#include <mruby/compile.h>


int main(void)
{
		int n;
		mrb_state* mrb;
		struct mrb_parser_state* st;
		char* code = "puts 'hello, mruby!'";

		mrb = mrb_open();
		st = mrb_parse_string(mrb, code);
		n = mrb_generate_code(mrb, st->tree);
		mrb_pool_close(st->pool);
		mrb_run(mrb, mrb_proc_new(mrb, mrb->irep[n]), mrb_nil_value());
		return 0;
}
