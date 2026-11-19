-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	CONCAT(Coalesce(`r`.`S`, ''), CAST(`r`.`A` + `r`.`B` AS CHAR(10))),
	CONCAT(CAST(`r`.`A` + `r`.`B` AS CHAR(10)), Coalesce(`r`.`S`, '')),
	CONCAT_WS(',', Coalesce(`r`.`S`, ''), `r`.`B` + `r`.`C`, `r`.`C`),
	CONCAT(Coalesce(`r`.`S`, ''), Coalesce(`r`.`S`, ''), CAST(`r`.`A` + `r`.`B` AS CHAR(10))),
	CONCAT(Coalesce(`r`.`S`, ''), CAST(`r`.`A` - `r`.`B` AS CHAR(10))),
	CONCAT(CAST(`r`.`A` - `r`.`B` AS CHAR(10)), Coalesce(`r`.`S`, '')),
	CONCAT_WS(',', Coalesce(`r`.`S`, ''), `r`.`B` - `r`.`C`, `r`.`C`),
	CONCAT(Coalesce(`r`.`S`, ''), Coalesce(`r`.`S`, ''), CAST(`r`.`A` - `r`.`B` AS CHAR(10))),
	CONCAT(Coalesce(`r`.`S`, ''), CAST(`r`.`A` * `r`.`B` AS CHAR(10))),
	CONCAT(CAST(`r`.`A` * `r`.`B` AS CHAR(10)), Coalesce(`r`.`S`, '')),
	CONCAT_WS(',', Coalesce(`r`.`S`, ''), `r`.`B` * `r`.`C`, `r`.`C`),
	CONCAT(Coalesce(`r`.`S`, ''), Coalesce(`r`.`S`, ''), CAST(`r`.`A` * `r`.`B` AS CHAR(10))),
	CONCAT(Coalesce(`r`.`S`, ''), CAST(`r`.`A` / `r`.`B` AS CHAR(10))),
	CONCAT(CAST(`r`.`A` / `r`.`B` AS CHAR(10)), Coalesce(`r`.`S`, '')),
	CONCAT_WS(',', Coalesce(`r`.`S`, ''), `r`.`B` / `r`.`C`, `r`.`C`),
	CONCAT(Coalesce(`r`.`S`, ''), Coalesce(`r`.`S`, ''), CAST(`r`.`A` / `r`.`B` AS CHAR(10))),
	CONCAT(Coalesce(`r`.`S`, ''), CAST(`r`.`A` % `r`.`B` AS CHAR(10))),
	CONCAT(CAST(`r`.`A` % `r`.`B` AS CHAR(10)), Coalesce(`r`.`S`, '')),
	CONCAT_WS(',', Coalesce(`r`.`S`, ''), `r`.`B` % `r`.`C`, `r`.`C`),
	CONCAT(Coalesce(`r`.`S`, ''), Coalesce(`r`.`S`, ''), CAST(`r`.`A` % `r`.`B` AS CHAR(10))),
	CONCAT(Coalesce(`r`.`S`, ''), CAST(`r`.`A` & `r`.`B` AS CHAR(10))),
	CONCAT(CAST(`r`.`A` & `r`.`B` AS CHAR(10)), Coalesce(`r`.`S`, '')),
	CONCAT_WS(',', Coalesce(`r`.`S`, ''), `r`.`B` & `r`.`C`, `r`.`C`),
	CONCAT(Coalesce(`r`.`S`, ''), Coalesce(`r`.`S`, ''), CAST(`r`.`A` & `r`.`B` AS CHAR(10))),
	CONCAT(Coalesce(`r`.`S`, ''), CAST(`r`.`A` | `r`.`B` AS CHAR(10))),
	CONCAT(CAST(`r`.`A` | `r`.`B` AS CHAR(10)), Coalesce(`r`.`S`, '')),
	CONCAT_WS(',', Coalesce(`r`.`S`, ''), `r`.`B` | `r`.`C`, `r`.`C`),
	CONCAT(Coalesce(`r`.`S`, ''), Coalesce(`r`.`S`, ''), CAST(`r`.`A` | `r`.`B` AS CHAR(10))),
	CONCAT(Coalesce(`r`.`S`, ''), CAST(`r`.`A` ^ `r`.`B` AS CHAR(10))),
	CONCAT(CAST(`r`.`A` ^ `r`.`B` AS CHAR(10)), Coalesce(`r`.`S`, '')),
	CONCAT_WS(',', Coalesce(`r`.`S`, ''), `r`.`B` ^ `r`.`C`, `r`.`C`),
	CONCAT(Coalesce(`r`.`S`, ''), Coalesce(`r`.`S`, ''), CAST(`r`.`A` ^ `r`.`B` AS CHAR(10))),
	CONCAT(Coalesce(`r`.`S`, ''), CAST(-`r`.`A` AS CHAR(10))),
	CONCAT(CAST(-`r`.`A` AS CHAR(10)), Coalesce(`r`.`S`, '')),
	CONCAT(Coalesce(`r`.`S`, ''), CAST(~`r`.`A` AS CHAR(10))),
	CONCAT(CAST(~`r`.`A` AS CHAR(10)), Coalesce(`r`.`S`, '')),
	CONCAT(Coalesce(`r`.`S`, ''), '-5'),
	CONCAT('-5', Coalesce(`r`.`S`, ''))
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	CONCAT(Coalesce(`r`.`S`, ''), '-5'),
	CONCAT('-5', Coalesce(`r`.`S`, ''))
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- cell Concat/Concat(s,Add(a,b)): green
-- cell Concat/Concat(Add(a,b),s): green
-- cell Concat/Join(s,Add(b,c),c): green
-- cell Concat/Concat(s,Concat(s,Add(a,b))): green
-- cell Concat/Concat(s,Sub(a,b)): green
-- cell Concat/Concat(Sub(a,b),s): green
-- cell Concat/Join(s,Sub(b,c),c): green
-- cell Concat/Concat(s,Concat(s,Sub(a,b))): green
-- cell Concat/Concat(s,Mul(a,b)): green
-- cell Concat/Concat(Mul(a,b),s): green
-- cell Concat/Join(s,Mul(b,c),c): green
-- cell Concat/Concat(s,Concat(s,Mul(a,b))): green
-- cell Concat/Concat(s,Div(a,b)): red
-- cell Concat/Concat(Div(a,b),s): red
-- cell Concat/Join(s,Div(b,c),c): red
-- cell Concat/Concat(s,Concat(s,Div(a,b))): red
-- cell Concat/Concat(s,Mod(a,b)): green
-- cell Concat/Concat(Mod(a,b),s): green
-- cell Concat/Join(s,Mod(b,c),c): green
-- cell Concat/Concat(s,Concat(s,Mod(a,b))): green
-- cell Concat/Concat(s,And(a,b)): green
-- cell Concat/Concat(And(a,b),s): green
-- cell Concat/Join(s,And(b,c),c): green
-- cell Concat/Concat(s,Concat(s,And(a,b))): green
-- cell Concat/Concat(s,Or(a,b)): green
-- cell Concat/Concat(Or(a,b),s): green
-- cell Concat/Join(s,Or(b,c),c): green
-- cell Concat/Concat(s,Concat(s,Or(a,b))): green
-- cell Concat/Concat(s,Xor(a,b)): green
-- cell Concat/Concat(Xor(a,b),s): green
-- cell Concat/Join(s,Xor(b,c),c): green
-- cell Concat/Concat(s,Concat(s,Xor(a,b))): green
-- cell Concat/Concat(s,Neg(a)): green
-- cell Concat/Concat(Neg(a),s): green
-- cell Concat/Concat(s,Not(a)): red
-- cell Concat/Concat(Not(a),s): red
-- cell Concat/Concat(s,NegLit(a)): green
-- cell Concat/Concat(NegLit(a),s): green
-- cell Concat/Concat(s,NegParam(a)): green
-- cell Concat/Concat(NegParam(a),s): green
