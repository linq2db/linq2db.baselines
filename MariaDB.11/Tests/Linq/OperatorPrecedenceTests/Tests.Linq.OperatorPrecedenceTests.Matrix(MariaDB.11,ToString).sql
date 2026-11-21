-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(`r`.`A` + `r`.`B` AS CHAR(11)),
	CAST(`r`.`A` - `r`.`B` AS CHAR(11)),
	CAST(`r`.`A` * `r`.`B` AS CHAR(11)),
	CAST(`r`.`A` DIV `r`.`B` AS CHAR(11)),
	CAST(`r`.`A` % `r`.`B` AS CHAR(11)),
	CAST(CAST(`r`.`A` & `r`.`B` AS SIGNED) AS CHAR(11)),
	CAST(CAST(`r`.`A` | `r`.`B` AS SIGNED) AS CHAR(11)),
	CAST(CAST(`r`.`A` ^ `r`.`B` AS SIGNED) AS CHAR(11)),
	CAST(-`r`.`A` AS CHAR(11)),
	CAST(CAST(~`r`.`A` AS SIGNED) AS CHAR(11))
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- cell ToString/ToString(Add(a,b)): green
-- cell ToString/ToString(Sub(a,b)): green
-- cell ToString/ToString(Mul(a,b)): green
-- cell ToString/ToString(Div(a,b)): green
-- cell ToString/ToString(Mod(a,b)): green
-- cell ToString/ToString(And(a,b)): green
-- cell ToString/ToString(Or(a,b)): green
-- cell ToString/ToString(Xor(a,b)): green
-- cell ToString/ToString(Neg(a)): green
-- cell ToString/ToString(Not(a)): green
