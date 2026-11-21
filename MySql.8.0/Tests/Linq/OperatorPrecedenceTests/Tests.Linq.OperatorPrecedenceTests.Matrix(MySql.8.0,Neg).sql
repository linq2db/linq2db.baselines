-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	-(`r`.`A` + `r`.`B`),
	-(`r`.`A` + `r`.`B`),
	-(`r`.`A` - `r`.`B`),
	-(`r`.`A` - `r`.`B`),
	-CAST(`r`.`A` & `r`.`B` AS SIGNED),
	-CAST(`r`.`A` & `r`.`B` AS SIGNED),
	-CAST(`r`.`A` | `r`.`B` AS SIGNED),
	-CAST(`r`.`A` | `r`.`B` AS SIGNED),
	-CAST(`r`.`A` ^ `r`.`B` AS SIGNED),
	-CAST(`r`.`A` ^ `r`.`B` AS SIGNED),
	`r`.`B`,
	-CAST(~`r`.`B` AS SIGNED),
	-(-5),
	-((-5) * `r`.`B`)
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	-(-5)
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- cell Neg/Neg(Add(a,b)): green
-- cell Neg/Neg(AsNotNull(Add(a,b))): green
-- cell Neg/Neg(Sub(a,b)): green
-- cell Neg/Neg(AsNotNull(Sub(a,b))): green
-- cell Neg/Neg(Mul(a,b)): skipped
-- cell Neg/Neg(AsNotNull(Mul(a,b))): skipped
-- cell Neg/Neg(Div(a,b)): skipped
-- cell Neg/Neg(AsNotNull(Div(a,b))): skipped
-- cell Neg/Neg(Mod(a,b)): skipped
-- cell Neg/Neg(AsNotNull(Mod(a,b))): skipped
-- cell Neg/Neg(And(a,b)): green
-- cell Neg/Neg(AsNotNull(And(a,b))): green
-- cell Neg/Neg(Or(a,b)): green
-- cell Neg/Neg(AsNotNull(Or(a,b))): green
-- cell Neg/Neg(Xor(a,b)): green
-- cell Neg/Neg(AsNotNull(Xor(a,b))): green
-- cell Neg/Neg(Neg(b)): green
-- cell Neg/Neg(Not(b)): green
-- cell Neg/Neg(NegLit(b)): green
-- cell Neg/Neg(NegParam(b)): green
-- cell Neg/Neg(Mul(NegLit,b)): green
