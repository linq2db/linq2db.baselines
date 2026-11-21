-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CAST(~(`r`.`A` + `r`.`B`) AS SIGNED),
	CAST(~(`r`.`A` + `r`.`B`) AS SIGNED),
	CAST(~(`r`.`A` - `r`.`B`) AS SIGNED),
	CAST(~(`r`.`A` - `r`.`B`) AS SIGNED),
	CAST(~(`r`.`A` * `r`.`B`) AS SIGNED),
	CAST(~(`r`.`A` * `r`.`B`) AS SIGNED),
	CAST(~(`r`.`A` DIV `r`.`B`) AS SIGNED),
	CAST(~(`r`.`A` DIV `r`.`B`) AS SIGNED),
	CAST(~CAST(`r`.`A` & `r`.`B` AS SIGNED) AS SIGNED),
	CAST(~CAST(`r`.`A` & `r`.`B` AS SIGNED) AS SIGNED),
	CAST(~CAST(`r`.`A` | `r`.`B` AS SIGNED) AS SIGNED),
	CAST(~CAST(`r`.`A` | `r`.`B` AS SIGNED) AS SIGNED),
	CAST(~(-`r`.`B`) AS SIGNED),
	CAST(~CAST(~`r`.`B` AS SIGNED) AS SIGNED),
	CAST(~(-5) AS SIGNED),
	CAST(~((-5) * `r`.`B`) AS SIGNED)
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CAST(~(-5) AS SIGNED)
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- cell Not/Not(Add(a,b)): green
-- cell Not/Not(AsNotNull(Add(a,b))): green
-- cell Not/Not(Sub(a,b)): green
-- cell Not/Not(AsNotNull(Sub(a,b))): green
-- cell Not/Not(Mul(a,b)): green
-- cell Not/Not(AsNotNull(Mul(a,b))): green
-- cell Not/Not(Div(a,b)): green
-- cell Not/Not(AsNotNull(Div(a,b))): green
-- cell Not/Not(Mod(a,b)): skipped
-- cell Not/Not(AsNotNull(Mod(a,b))): skipped
-- cell Not/Not(And(a,b)): green
-- cell Not/Not(AsNotNull(And(a,b))): green
-- cell Not/Not(Or(a,b)): green
-- cell Not/Not(AsNotNull(Or(a,b))): green
-- cell Not/Not(Xor(a,b)): skipped
-- cell Not/Not(AsNotNull(Xor(a,b))): skipped
-- cell Not/Not(Neg(b)): green
-- cell Not/Not(Not(b)): green
-- cell Not/Not(NegLit(b)): green
-- cell Not/Not(NegParam(b)): green
-- cell Not/Not(Mul(NegLit,b)): green
