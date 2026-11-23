-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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
	CONCAT(Coalesce(`r`.`S`, ''), CAST(`r`.`A` DIV `r`.`B` AS CHAR(10))),
	CONCAT(CAST(`r`.`A` DIV `r`.`B` AS CHAR(10)), Coalesce(`r`.`S`, '')),
	CONCAT_WS(',', Coalesce(`r`.`S`, ''), `r`.`B` DIV `r`.`C`, `r`.`C`),
	CONCAT(Coalesce(`r`.`S`, ''), Coalesce(`r`.`S`, ''), CAST(`r`.`A` DIV `r`.`B` AS CHAR(10))),
	CONCAT(Coalesce(`r`.`S`, ''), CAST(`r`.`A` % `r`.`B` AS CHAR(10))),
	CONCAT(CAST(`r`.`A` % `r`.`B` AS CHAR(10)), Coalesce(`r`.`S`, '')),
	CONCAT_WS(',', Coalesce(`r`.`S`, ''), `r`.`B` % `r`.`C`, `r`.`C`),
	CONCAT(Coalesce(`r`.`S`, ''), Coalesce(`r`.`S`, ''), CAST(`r`.`A` % `r`.`B` AS CHAR(10))),
	CONCAT(Coalesce(`r`.`S`, ''), CAST(CAST(`r`.`A` & `r`.`B` AS SIGNED) AS CHAR(10))),
	CONCAT(CAST(CAST(`r`.`A` & `r`.`B` AS SIGNED) AS CHAR(10)), Coalesce(`r`.`S`, '')),
	CONCAT_WS(',', Coalesce(`r`.`S`, ''), CAST(`r`.`B` & `r`.`C` AS SIGNED), `r`.`C`),
	CONCAT(Coalesce(`r`.`S`, ''), Coalesce(`r`.`S`, ''), CAST(CAST(`r`.`A` & `r`.`B` AS SIGNED) AS CHAR(10))),
	CONCAT(Coalesce(`r`.`S`, ''), CAST(CAST(`r`.`A` | `r`.`B` AS SIGNED) AS CHAR(10))),
	CONCAT(CAST(CAST(`r`.`A` | `r`.`B` AS SIGNED) AS CHAR(10)), Coalesce(`r`.`S`, '')),
	CONCAT_WS(',', Coalesce(`r`.`S`, ''), CAST(`r`.`B` | `r`.`C` AS SIGNED), `r`.`C`),
	CONCAT(Coalesce(`r`.`S`, ''), Coalesce(`r`.`S`, ''), CAST(CAST(`r`.`A` | `r`.`B` AS SIGNED) AS CHAR(10))),
	CONCAT(Coalesce(`r`.`S`, ''), CAST(CAST(`r`.`A` ^ `r`.`B` AS SIGNED) AS CHAR(10))),
	CONCAT(CAST(CAST(`r`.`A` ^ `r`.`B` AS SIGNED) AS CHAR(10)), Coalesce(`r`.`S`, '')),
	CONCAT_WS(',', Coalesce(`r`.`S`, ''), CAST(`r`.`B` ^ `r`.`C` AS SIGNED), `r`.`C`),
	CONCAT(Coalesce(`r`.`S`, ''), Coalesce(`r`.`S`, ''), CAST(CAST(`r`.`A` ^ `r`.`B` AS SIGNED) AS CHAR(10))),
	CONCAT(Coalesce(`r`.`S`, ''), CAST(-`r`.`A` AS CHAR(10))),
	CONCAT(CAST(-`r`.`A` AS CHAR(10)), Coalesce(`r`.`S`, '')),
	CONCAT(Coalesce(`r`.`S`, ''), CAST(CAST(~`r`.`A` AS SIGNED) AS CHAR(10))),
	CONCAT(CAST(CAST(~`r`.`A` AS SIGNED) AS CHAR(10)), Coalesce(`r`.`S`, '')),
	CONCAT(Coalesce(`r`.`S`, ''), '-5'),
	CONCAT('-5', Coalesce(`r`.`S`, ''))
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CONCAT(Coalesce(`r`.`S`, ''), '-5'),
	CONCAT('-5', Coalesce(`r`.`S`, ''))
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

