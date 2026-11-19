-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	-(`r`.`A` + `r`.`B`),
	-(`r`.`A` + `r`.`B`),
	-(`r`.`A` - `r`.`B`),
	-(`r`.`A` - `r`.`B`),
	-(`r`.`A` & `r`.`B`),
	-(`r`.`A` & `r`.`B`),
	-(`r`.`A` | `r`.`B`),
	-(`r`.`A` | `r`.`B`),
	-(`r`.`A` ^ `r`.`B`),
	-(`r`.`A` ^ `r`.`B`),
	`r`.`B`,
	-(~`r`.`B`),
	--5,
	-(-5 * `r`.`B`)
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	-(`r`.`A` + `r`.`B`)
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	-(`r`.`A` + `r`.`B`)
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	-(`r`.`A` - `r`.`B`)
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	-(`r`.`A` - `r`.`B`)
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	-(`r`.`A` & `r`.`B`)
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	-(`r`.`A` & `r`.`B`)
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	-(`r`.`A` | `r`.`B`)
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	-(`r`.`A` | `r`.`B`)
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	-(`r`.`A` ^ `r`.`B`)
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	-(`r`.`A` ^ `r`.`B`)
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`B`
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	-(~`r`.`B`)
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	--5
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	-(-5 * `r`.`B`)
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	--5
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
-- cell Neg/Neg(Not(b)): error
-- cell Neg/Neg(NegLit(b)): green
-- cell Neg/Neg(NegParam(b)): green
-- cell Neg/Neg(Mul(NegLit,b)): green
