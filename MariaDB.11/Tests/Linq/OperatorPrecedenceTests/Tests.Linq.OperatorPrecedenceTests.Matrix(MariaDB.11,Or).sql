-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` + `r`.`B` | `r`.`C`,
	`r`.`A` | `r`.`B` + `r`.`C`,
	`r`.`A` + `r`.`B` | `r`.`C`,
	`r`.`A` | `r`.`B` + `r`.`C`,
	`r`.`A` - `r`.`B` | `r`.`C`,
	`r`.`A` | `r`.`B` - `r`.`C`,
	`r`.`A` - `r`.`B` | `r`.`C`,
	`r`.`A` | `r`.`B` - `r`.`C`,
	`r`.`A` * `r`.`B` | `r`.`C`,
	`r`.`A` | `r`.`B` * `r`.`C`,
	`r`.`A` * `r`.`B` | `r`.`C`,
	`r`.`A` | `r`.`B` * `r`.`C`,
	`r`.`A` / `r`.`B` | `r`.`C`,
	`r`.`A` | `r`.`B` / `r`.`C`,
	`r`.`A` / `r`.`B` | `r`.`C`,
	`r`.`A` | `r`.`B` / `r`.`C`,
	`r`.`A` % `r`.`B` | `r`.`C`,
	`r`.`A` | `r`.`B` % `r`.`C`,
	`r`.`A` % `r`.`B` | `r`.`C`,
	`r`.`A` | `r`.`B` % `r`.`C`,
	`r`.`A` & `r`.`B` | `r`.`C`,
	`r`.`A` | `r`.`B` & `r`.`C`,
	`r`.`A` & `r`.`B` | `r`.`C`,
	`r`.`A` | `r`.`B` & `r`.`C`,
	`r`.`A` ^ `r`.`B` | `r`.`C`,
	`r`.`A` | `r`.`B` ^ `r`.`C`,
	`r`.`A` ^ `r`.`B` | `r`.`C`,
	`r`.`A` | `r`.`B` ^ `r`.`C`,
	`r`.`A` | -`r`.`B`,
	-`r`.`B` | `r`.`C`,
	`r`.`A` - `r`.`B` | `r`.`C`,
	`r`.`A` + `r`.`B` | `r`.`C`,
	`r`.`A` * -`r`.`B` | `r`.`C`,
	`r`.`A` / -`r`.`B` | `r`.`C`,
	`r`.`A` % -`r`.`B` | `r`.`C`,
	`r`.`A` & -`r`.`B` | `r`.`C`,
	`r`.`A` | -`r`.`B` | `r`.`C`,
	`r`.`A` ^ -`r`.`B` | `r`.`C`,
	`r`.`A` | ~`r`.`B`,
	~`r`.`B` | `r`.`C`,
	`r`.`A` + (~`r`.`B`) | `r`.`C`,
	`r`.`A` - (~`r`.`B`) | `r`.`C`,
	`r`.`A` * (~`r`.`B`) | `r`.`C`,
	`r`.`A` / (~`r`.`B`) | `r`.`C`,
	`r`.`A` % (~`r`.`B`) | `r`.`C`,
	`r`.`A` & ~`r`.`B` | `r`.`C`,
	`r`.`A` | ~`r`.`B` | `r`.`C`,
	`r`.`A` ^ ~`r`.`B` | `r`.`C`,
	`r`.`A` | -5,
	-5 | `r`.`C`,
	`r`.`A` + -5 | `r`.`C`,
	`r`.`A` - -5 | `r`.`C`,
	`r`.`A` * -5 | `r`.`C`,
	`r`.`A` / -5 | `r`.`C`,
	`r`.`A` % -5 | `r`.`C`,
	`r`.`A` & -5 | `r`.`C`,
	`r`.`A` | -5 | `r`.`C`,
	`r`.`A` ^ -5 | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` + `r`.`B` | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` | `r`.`B` + `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` + `r`.`B` | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` | `r`.`B` + `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` - `r`.`B` | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` | `r`.`B` - `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` - `r`.`B` | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` | `r`.`B` - `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` * `r`.`B` | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` | `r`.`B` * `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` * `r`.`B` | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` | `r`.`B` * `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` / `r`.`B` | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` | `r`.`B` / `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` / `r`.`B` | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` | `r`.`B` / `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` % `r`.`B` | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` | `r`.`B` % `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` % `r`.`B` | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` | `r`.`B` % `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` & `r`.`B` | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` | `r`.`B` & `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` & `r`.`B` | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` | `r`.`B` & `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` ^ `r`.`B` | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` | `r`.`B` ^ `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` ^ `r`.`B` | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` | `r`.`B` ^ `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` | -`r`.`B`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	-`r`.`B` | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` - `r`.`B` | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` + `r`.`B` | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` * -`r`.`B` | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` / -`r`.`B` | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` % -`r`.`B` | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` & -`r`.`B` | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` | -`r`.`B` | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` ^ -`r`.`B` | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` | ~`r`.`B`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	~`r`.`B` | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` + (~`r`.`B`) | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` - (~`r`.`B`) | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` * (~`r`.`B`) | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` / (~`r`.`B`) | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` % (~`r`.`B`) | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` & ~`r`.`B` | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` | ~`r`.`B` | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` ^ ~`r`.`B` | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` | -5
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	-5 | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` + -5 | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` - -5 | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` * -5 | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` / -5 | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` % -5 | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` & -5 | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` | -5 | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` ^ -5 | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` | -5,
	-5 | `r`.`C`,
	`r`.`A` + -5 | `r`.`C`,
	`r`.`A` - -5 | `r`.`C`,
	`r`.`A` * -5 | `r`.`C`,
	`r`.`A` / -5 | `r`.`C`,
	`r`.`A` % -5 | `r`.`C`,
	`r`.`A` & -5 | `r`.`C`,
	`r`.`A` | -5 | `r`.`C`,
	`r`.`A` ^ -5 | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` | -5
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	-5 | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` + -5 | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` - -5 | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` * -5 | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` / -5 | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` % -5 | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` & -5 | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` | -5 | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`A` ^ -5 | `r`.`C`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- cell Or/Or(Add(a,b),c): green
-- cell Or/Or(a,Add(b,c)): green
-- cell Or/Or(AsNotNull(Add(a,b)),c): green
-- cell Or/Or(a,AsNotNull(Add(b,c))): green
-- cell Or/Or(Sub(a,b),c): green
-- cell Or/Or(a,Sub(b,c)): green
-- cell Or/Or(AsNotNull(Sub(a,b)),c): green
-- cell Or/Or(a,AsNotNull(Sub(b,c))): green
-- cell Or/Or(Mul(a,b),c): green
-- cell Or/Or(a,Mul(b,c)): green
-- cell Or/Or(AsNotNull(Mul(a,b)),c): green
-- cell Or/Or(a,AsNotNull(Mul(b,c))): green
-- cell Or/Or(Div(a,b),c): green
-- cell Or/Or(a,Div(b,c)): green
-- cell Or/Or(AsNotNull(Div(a,b)),c): green
-- cell Or/Or(a,AsNotNull(Div(b,c))): green
-- cell Or/Or(Mod(a,b),c): green
-- cell Or/Or(a,Mod(b,c)): green
-- cell Or/Or(AsNotNull(Mod(a,b)),c): green
-- cell Or/Or(a,AsNotNull(Mod(b,c))): green
-- cell Or/Or(And(a,b),c): green
-- cell Or/Or(a,And(b,c)): green
-- cell Or/Or(AsNotNull(And(a,b)),c): green
-- cell Or/Or(a,AsNotNull(And(b,c))): green
-- cell Or/Or(Or(a,b),c): skipped
-- cell Or/Or(a,Or(b,c)): skipped
-- cell Or/Or(AsNotNull(Or(a,b)),c): skipped
-- cell Or/Or(a,AsNotNull(Or(b,c))): skipped
-- cell Or/Or(Xor(a,b),c): green
-- cell Or/Or(a,Xor(b,c)): green
-- cell Or/Or(AsNotNull(Xor(a,b)),c): green
-- cell Or/Or(a,AsNotNull(Xor(b,c))): green
-- cell Or/Or(a,Neg(b)): error
-- cell Or/Or(Neg(b),c): error
-- cell Or/Or(Add(a,Neg(b)),c): green
-- cell Or/Or(Sub(a,Neg(b)),c): green
-- cell Or/Or(Mul(a,Neg(b)),c): error
-- cell Or/Or(Div(a,Neg(b)),c): error
-- cell Or/Or(Mod(a,Neg(b)),c): green
-- cell Or/Or(And(a,Neg(b)),c): green
-- cell Or/Or(Or(a,Neg(b)),c): error
-- cell Or/Or(Xor(a,Neg(b)),c): error
-- cell Or/Or(a,Not(b)): error
-- cell Or/Or(Not(b),c): error
-- cell Or/Or(Add(a,Not(b)),c): error
-- cell Or/Or(Sub(a,Not(b)),c): error
-- cell Or/Or(Mul(a,Not(b)),c): error
-- cell Or/Or(Div(a,Not(b)),c): red
-- cell Or/Or(Mod(a,Not(b)),c): red
-- cell Or/Or(And(a,Not(b)),c): green
-- cell Or/Or(Or(a,Not(b)),c): error
-- cell Or/Or(Xor(a,Not(b)),c): error
-- cell Or/Or(a,NegLit(b)): error
-- cell Or/Or(NegLit(b),c): error
-- cell Or/Or(Add(a,NegLit(b)),c): green
-- cell Or/Or(Sub(a,NegLit(b)),c): green
-- cell Or/Or(Mul(a,NegLit(b)),c): error
-- cell Or/Or(Div(a,NegLit(b)),c): error
-- cell Or/Or(Mod(a,NegLit(b)),c): green
-- cell Or/Or(And(a,NegLit(b)),c): green
-- cell Or/Or(Or(a,NegLit(b)),c): error
-- cell Or/Or(Xor(a,NegLit(b)),c): error
-- cell Or/Or(a,NegParam(b)): error
-- cell Or/Or(NegParam(b),c): error
-- cell Or/Or(Add(a,NegParam(b)),c): green
-- cell Or/Or(Sub(a,NegParam(b)),c): green
-- cell Or/Or(Mul(a,NegParam(b)),c): error
-- cell Or/Or(Div(a,NegParam(b)),c): error
-- cell Or/Or(Mod(a,NegParam(b)),c): green
-- cell Or/Or(And(a,NegParam(b)),c): green
-- cell Or/Or(Or(a,NegParam(b)),c): error
-- cell Or/Or(Xor(a,NegParam(b)),c): error
