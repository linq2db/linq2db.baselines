-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	CAST(`r`.`A` + `r`.`B` & `r`.`C` AS SIGNED),
	CAST(`r`.`A` & `r`.`B` + `r`.`C` AS SIGNED),
	CAST(`r`.`A` + `r`.`B` & `r`.`C` AS SIGNED),
	CAST(`r`.`A` & `r`.`B` + `r`.`C` AS SIGNED),
	CAST(`r`.`A` - `r`.`B` & `r`.`C` AS SIGNED),
	CAST(`r`.`A` & `r`.`B` - `r`.`C` AS SIGNED),
	CAST(`r`.`A` - `r`.`B` & `r`.`C` AS SIGNED),
	CAST(`r`.`A` & `r`.`B` - `r`.`C` AS SIGNED),
	CAST(`r`.`A` * `r`.`B` & `r`.`C` AS SIGNED),
	CAST(`r`.`A` & `r`.`B` * `r`.`C` AS SIGNED),
	CAST(`r`.`A` * `r`.`B` & `r`.`C` AS SIGNED),
	CAST(`r`.`A` & `r`.`B` * `r`.`C` AS SIGNED),
	CAST(`r`.`A` DIV `r`.`B` & `r`.`C` AS SIGNED),
	CAST(`r`.`A` & `r`.`B` DIV `r`.`C` AS SIGNED),
	CAST(`r`.`A` DIV `r`.`B` & `r`.`C` AS SIGNED),
	CAST(`r`.`A` & `r`.`B` DIV `r`.`C` AS SIGNED),
	CAST(`r`.`A` % `r`.`B` & `r`.`C` AS SIGNED),
	CAST(`r`.`A` & `r`.`B` % `r`.`C` AS SIGNED),
	CAST(`r`.`A` % `r`.`B` & `r`.`C` AS SIGNED),
	CAST(`r`.`A` & `r`.`B` % `r`.`C` AS SIGNED),
	CAST(CAST(`r`.`A` | `r`.`B` AS SIGNED) & `r`.`C` AS SIGNED),
	CAST(`r`.`A` & CAST(`r`.`B` | `r`.`C` AS SIGNED) AS SIGNED),
	CAST(CAST(`r`.`A` | `r`.`B` AS SIGNED) & `r`.`C` AS SIGNED),
	CAST(`r`.`A` & CAST(`r`.`B` | `r`.`C` AS SIGNED) AS SIGNED),
	CAST(CAST(`r`.`A` ^ `r`.`B` AS SIGNED) & `r`.`C` AS SIGNED),
	CAST(`r`.`A` & CAST(`r`.`B` ^ `r`.`C` AS SIGNED) AS SIGNED),
	CAST(CAST(`r`.`A` ^ `r`.`B` AS SIGNED) & `r`.`C` AS SIGNED),
	CAST(`r`.`A` & CAST(`r`.`B` ^ `r`.`C` AS SIGNED) AS SIGNED),
	CAST(`r`.`A` + `r`.`B` & `r`.`C` AS SIGNED),
	CAST(`r`.`A` & `r`.`B` + `r`.`C` AS SIGNED),
	CAST(`r`.`A` + -6 & `r`.`C` AS SIGNED),
	CAST(`r`.`A` - `r`.`B` & `r`.`C` AS SIGNED),
	CAST(`r`.`A` & `r`.`B` - `r`.`C` AS SIGNED),
	CAST(`r`.`A` - -6 & `r`.`C` AS SIGNED),
	CAST(`r`.`A` * `r`.`B` & `r`.`C` AS SIGNED),
	CAST(`r`.`A` & `r`.`B` * `r`.`C` AS SIGNED),
	CAST(`r`.`A` * -6 & `r`.`C` AS SIGNED),
	CAST(`r`.`A` + `r`.`B` & `r`.`C` AS SIGNED),
	CAST(`r`.`A` & `r`.`B` + `r`.`C` AS SIGNED),
	CAST(`r`.`A` + -6 & `r`.`C` AS SIGNED),
	CAST(`r`.`A` & -`r`.`B` AS SIGNED),
	CAST(-`r`.`B` & `r`.`C` AS SIGNED),
	CAST(`r`.`A` - `r`.`B` & `r`.`C` AS SIGNED),
	CAST(`r`.`A` + `r`.`B` & `r`.`C` AS SIGNED),
	CAST(`r`.`A` * -`r`.`B` & `r`.`C` AS SIGNED),
	CAST(`r`.`A` DIV -`r`.`B` & `r`.`C` AS SIGNED),
	CAST(`r`.`A` % -`r`.`B` & `r`.`C` AS SIGNED),
	CAST(CAST(`r`.`A` & -`r`.`B` AS SIGNED) & `r`.`C` AS SIGNED),
	CAST(CAST(`r`.`A` | -`r`.`B` AS SIGNED) & `r`.`C` AS SIGNED),
	CAST(CAST(`r`.`A` ^ -`r`.`B` AS SIGNED) & `r`.`C` AS SIGNED),
	CAST(`r`.`A` & CAST(~`r`.`B` AS SIGNED) AS SIGNED),
	CAST(CAST(~`r`.`B` AS SIGNED) & `r`.`C` AS SIGNED),
	CAST(`r`.`A` + CAST(~`r`.`B` AS SIGNED) & `r`.`C` AS SIGNED),
	CAST(`r`.`A` - CAST(~`r`.`B` AS SIGNED) & `r`.`C` AS SIGNED),
	CAST(`r`.`A` * CAST(~`r`.`B` AS SIGNED) & `r`.`C` AS SIGNED),
	CAST(`r`.`A` % CAST(~`r`.`B` AS SIGNED) & `r`.`C` AS SIGNED),
	CAST(CAST(`r`.`A` & CAST(~`r`.`B` AS SIGNED) AS SIGNED) & `r`.`C` AS SIGNED),
	CAST(CAST(`r`.`A` | CAST(~`r`.`B` AS SIGNED) AS SIGNED) & `r`.`C` AS SIGNED),
	CAST(CAST(`r`.`A` ^ CAST(~`r`.`B` AS SIGNED) AS SIGNED) & `r`.`C` AS SIGNED),
	CAST(`r`.`A` & -5 AS SIGNED),
	CAST(-5 & `r`.`C` AS SIGNED),
	CAST(`r`.`A` + -5 & `r`.`C` AS SIGNED),
	CAST(`r`.`A` - -5 & `r`.`C` AS SIGNED),
	CAST(`r`.`A` * -5 & `r`.`C` AS SIGNED),
	CAST(`r`.`A` % -5 & `r`.`C` AS SIGNED),
	CAST(CAST(`r`.`A` & -5 AS SIGNED) & `r`.`C` AS SIGNED),
	CAST(CAST(`r`.`A` | -5 AS SIGNED) & `r`.`C` AS SIGNED),
	CAST(CAST(`r`.`A` ^ -5 AS SIGNED) & `r`.`C` AS SIGNED)
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	CAST(`r`.`A` & -5 AS SIGNED),
	CAST(-5 & `r`.`C` AS SIGNED),
	CAST(`r`.`A` + -5 & `r`.`C` AS SIGNED),
	CAST(`r`.`A` - -5 & `r`.`C` AS SIGNED),
	CAST(`r`.`A` * -5 & `r`.`C` AS SIGNED),
	CAST(`r`.`A` % -5 & `r`.`C` AS SIGNED),
	CAST(CAST(`r`.`A` & -5 AS SIGNED) & `r`.`C` AS SIGNED),
	CAST(CAST(`r`.`A` | -5 AS SIGNED) & `r`.`C` AS SIGNED),
	CAST(CAST(`r`.`A` ^ -5 AS SIGNED) & `r`.`C` AS SIGNED)
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- cell And/And(Add(a,b),c): green
-- cell And/And(a,Add(b,c)): green
-- cell And/And(AsNotNull(Add(a,b)),c): green
-- cell And/And(a,AsNotNull(Add(b,c))): green
-- cell And/And(Sub(a,b),c): green
-- cell And/And(a,Sub(b,c)): green
-- cell And/And(AsNotNull(Sub(a,b)),c): green
-- cell And/And(a,AsNotNull(Sub(b,c))): green
-- cell And/And(Mul(a,b),c): green
-- cell And/And(a,Mul(b,c)): green
-- cell And/And(AsNotNull(Mul(a,b)),c): green
-- cell And/And(a,AsNotNull(Mul(b,c))): green
-- cell And/And(Div(a,b),c): green
-- cell And/And(a,Div(b,c)): green
-- cell And/And(AsNotNull(Div(a,b)),c): green
-- cell And/And(a,AsNotNull(Div(b,c))): green
-- cell And/And(Mod(a,b),c): green
-- cell And/And(a,Mod(b,c)): green
-- cell And/And(AsNotNull(Mod(a,b)),c): green
-- cell And/And(a,AsNotNull(Mod(b,c))): green
-- cell And/And(And(a,b),c): skipped
-- cell And/And(a,And(b,c)): skipped
-- cell And/And(AsNotNull(And(a,b)),c): skipped
-- cell And/And(a,AsNotNull(And(b,c))): skipped
-- cell And/And(Or(a,b),c): green
-- cell And/And(a,Or(b,c)): green
-- cell And/And(AsNotNull(Or(a,b)),c): green
-- cell And/And(a,AsNotNull(Or(b,c))): green
-- cell And/And(Xor(a,b),c): green
-- cell And/And(a,Xor(b,c)): green
-- cell And/And(AsNotNull(Xor(a,b)),c): green
-- cell And/And(a,AsNotNull(Xor(b,c))): green
-- cell And/And(TAdd(a,b),c): green
-- cell And/And(a,TAdd(b,c)): green
-- cell And/And(TAdd(a,NegLit),c): green
-- cell And/And(TSub(a,b),c): green
-- cell And/And(a,TSub(b,c)): green
-- cell And/And(TSub(a,NegLit),c): green
-- cell And/And(TMul(a,b),c): green
-- cell And/And(a,TMul(b,c)): green
-- cell And/And(TMul(a,NegLit),c): green
-- cell And/And(TAddOffset(a,b),c): green
-- cell And/And(a,TAddOffset(b,c)): green
-- cell And/And(TAddOffset(a,NegLit),c): green
-- cell And/And(a,Neg(b)): green
-- cell And/And(Neg(b),c): green
-- cell And/And(Add(a,Neg(b)),c): green
-- cell And/And(Sub(a,Neg(b)),c): green
-- cell And/And(Mul(a,Neg(b)),c): green
-- cell And/And(Div(a,Neg(b)),c): green
-- cell And/And(Mod(a,Neg(b)),c): green
-- cell And/And(And(a,Neg(b)),c): green
-- cell And/And(Or(a,Neg(b)),c): green
-- cell And/And(Xor(a,Neg(b)),c): green
-- cell And/And(a,Not(b)): green
-- cell And/And(Not(b),c): green
-- cell And/And(Add(a,Not(b)),c): green
-- cell And/And(Sub(a,Not(b)),c): green
-- cell And/And(Mul(a,Not(b)),c): green
-- cell And/And(Div(a,Not(b)),c): skipped
-- cell And/And(Mod(a,Not(b)),c): green
-- cell And/And(And(a,Not(b)),c): green
-- cell And/And(Or(a,Not(b)),c): green
-- cell And/And(Xor(a,Not(b)),c): green
-- cell And/And(a,NegLit(b)): green
-- cell And/And(NegLit(b),c): green
-- cell And/And(Add(a,NegLit(b)),c): green
-- cell And/And(Sub(a,NegLit(b)),c): green
-- cell And/And(Mul(a,NegLit(b)),c): green
-- cell And/And(Div(a,NegLit(b)),c): skipped
-- cell And/And(Mod(a,NegLit(b)),c): green
-- cell And/And(And(a,NegLit(b)),c): green
-- cell And/And(Or(a,NegLit(b)),c): green
-- cell And/And(Xor(a,NegLit(b)),c): green
-- cell And/And(a,NegParam(b)): green
-- cell And/And(NegParam(b),c): green
-- cell And/And(Add(a,NegParam(b)),c): green
-- cell And/And(Sub(a,NegParam(b)),c): green
-- cell And/And(Mul(a,NegParam(b)),c): green
-- cell And/And(Div(a,NegParam(b)),c): skipped
-- cell And/And(Mod(a,NegParam(b)),c): green
-- cell And/And(And(a,NegParam(b)),c): green
-- cell And/And(Or(a,NegParam(b)),c): green
-- cell And/And(Xor(a,NegParam(b)),c): green
