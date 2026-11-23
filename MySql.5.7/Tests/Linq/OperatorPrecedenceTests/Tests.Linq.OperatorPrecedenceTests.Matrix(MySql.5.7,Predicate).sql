-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CASE
		WHEN `r`.`A` + `r`.`B` = `r`.`C` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`C` < `r`.`A` + `r`.`B` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` + `r`.`B` BETWEEN `r`.`C` AND `r`.`A` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` BETWEEN `r`.`B` + `r`.`C` AND `r`.`A` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` + `r`.`B` IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`N` IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN CONCAT(Coalesce(`r`.`S`, ''), CAST(`r`.`A` + `r`.`B` AS CHAR(10))) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` + `r`.`B` <= `r`.`C` AND `r`.`B` < `r`.`A` THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT `r`.`A` + `r`.`B` <=> `r`.`N` THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT `r`.`N` <=> `r`.`A` + `r`.`B` THEN 1
		ELSE 0
	END,
	CASE
		WHEN -`r`.`N` IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` - `r`.`B` BETWEEN `r`.`C` AND `r`.`A` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`C` BETWEEN `r`.`A` - `r`.`B` AND `r`.`A` THEN 1
		ELSE 0
	END,
	CASE
		WHEN ~`r`.`N` IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` + CAST(~`r`.`B` AS SIGNED) BETWEEN `r`.`C` AND `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`C` BETWEEN `r`.`A` + CAST(~`r`.`B` AS SIGNED) AND `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` - `r`.`B` = `r`.`C` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`C` < `r`.`A` - `r`.`B` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` - `r`.`B` BETWEEN `r`.`C` AND `r`.`A` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` BETWEEN `r`.`B` - `r`.`C` AND `r`.`A` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` - `r`.`B` IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`N` IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN CONCAT(Coalesce(`r`.`S`, ''), CAST(`r`.`A` - `r`.`B` AS CHAR(10))) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` - `r`.`B` <= `r`.`C` AND `r`.`B` < `r`.`A` THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT `r`.`A` - `r`.`B` <=> `r`.`N` THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT `r`.`N` <=> `r`.`A` - `r`.`B` THEN 1
		ELSE 0
	END,
	CASE
		WHEN -`r`.`N` IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` + `r`.`B` BETWEEN `r`.`C` AND `r`.`A` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`C` BETWEEN `r`.`A` + `r`.`B` AND `r`.`A` THEN 1
		ELSE 0
	END,
	CASE
		WHEN ~`r`.`N` IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` - CAST(~`r`.`B` AS SIGNED) BETWEEN `r`.`C` AND `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`C` BETWEEN `r`.`A` - CAST(~`r`.`B` AS SIGNED) AND `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` * `r`.`B` = `r`.`C` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`C` < `r`.`A` * `r`.`B` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` * `r`.`B` BETWEEN `r`.`C` AND `r`.`A` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` BETWEEN `r`.`B` * `r`.`C` AND `r`.`A` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` * `r`.`B` IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`N` IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN CONCAT(Coalesce(`r`.`S`, ''), CAST(`r`.`A` * `r`.`B` AS CHAR(10))) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` * `r`.`B` <= `r`.`C` AND `r`.`B` < `r`.`A` THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT `r`.`A` * `r`.`B` <=> `r`.`N` THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT `r`.`N` <=> `r`.`A` * `r`.`B` THEN 1
		ELSE 0
	END,
	CASE
		WHEN -`r`.`N` IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` * -`r`.`B` BETWEEN `r`.`C` AND `r`.`A` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`C` BETWEEN `r`.`A` * -`r`.`B` AND `r`.`A` THEN 1
		ELSE 0
	END,
	CASE
		WHEN ~`r`.`N` IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` * CAST(~`r`.`B` AS SIGNED) BETWEEN `r`.`C` AND `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`C` BETWEEN `r`.`A` * CAST(~`r`.`B` AS SIGNED) AND `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` DIV `r`.`B` = `r`.`C` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`C` < `r`.`A` DIV `r`.`B` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` DIV `r`.`B` BETWEEN `r`.`C` AND `r`.`A` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` BETWEEN `r`.`B` DIV `r`.`C` AND `r`.`A` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` DIV `r`.`B` IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`N` IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN CONCAT(Coalesce(`r`.`S`, ''), CAST(`r`.`A` DIV `r`.`B` AS CHAR(10))) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` DIV `r`.`B` <= `r`.`C` AND `r`.`B` < `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT `r`.`A` DIV `r`.`B` <=> `r`.`N` THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT `r`.`N` <=> `r`.`A` DIV `r`.`B` THEN 1
		ELSE 0
	END,
	CASE
		WHEN -`r`.`N` IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` DIV -`r`.`B` BETWEEN `r`.`C` AND `r`.`A` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`C` BETWEEN `r`.`A` DIV -`r`.`B` AND `r`.`A` THEN 1
		ELSE 0
	END,
	CASE
		WHEN ~`r`.`N` IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` % `r`.`B` = `r`.`C` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`C` < `r`.`A` % `r`.`B` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` % `r`.`B` BETWEEN `r`.`C` AND `r`.`A` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` BETWEEN `r`.`B` % `r`.`C` AND `r`.`A` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` % `r`.`B` IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`N` IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN CONCAT(Coalesce(`r`.`S`, ''), CAST(`r`.`A` % `r`.`B` AS CHAR(10))) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` % `r`.`B` <= `r`.`C` AND `r`.`B` < `r`.`A` THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT `r`.`A` % `r`.`B` <=> `r`.`N` THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT `r`.`N` <=> `r`.`A` % `r`.`B` THEN 1
		ELSE 0
	END,
	CASE
		WHEN -`r`.`N` IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` % -`r`.`B` BETWEEN `r`.`C` AND `r`.`A` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`C` BETWEEN `r`.`A` % -`r`.`B` AND `r`.`A` THEN 1
		ELSE 0
	END,
	CASE
		WHEN ~`r`.`N` IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` % CAST(~`r`.`B` AS SIGNED) BETWEEN `r`.`C` AND `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`C` BETWEEN `r`.`A` % CAST(~`r`.`B` AS SIGNED) AND `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN CAST(`r`.`A` & `r`.`B` AS SIGNED) = `r`.`C` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`C` < CAST(`r`.`A` & `r`.`B` AS SIGNED) THEN 1
		ELSE 0
	END,
	CASE
		WHEN CAST(`r`.`A` & `r`.`B` AS SIGNED) BETWEEN `r`.`C` AND `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` BETWEEN CAST(`r`.`B` & `r`.`C` AS SIGNED) AND `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN CAST(`r`.`A` & `r`.`B` AS SIGNED) IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`N` IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN CONCAT(Coalesce(`r`.`S`, ''), CAST(CAST(`r`.`A` & `r`.`B` AS SIGNED) AS CHAR(10))) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN CAST(`r`.`A` & `r`.`B` AS SIGNED) <= `r`.`C` AND `r`.`B` < `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT CAST(`r`.`A` & `r`.`B` AS SIGNED) <=> `r`.`N` THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT `r`.`N` <=> CAST(`r`.`A` & `r`.`B` AS SIGNED) THEN 1
		ELSE 0
	END,
	CASE
		WHEN -`r`.`N` IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN CAST(`r`.`A` & -`r`.`B` AS SIGNED) BETWEEN `r`.`C` AND `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`C` BETWEEN CAST(`r`.`A` & -`r`.`B` AS SIGNED) AND `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN ~`r`.`N` IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN CAST(`r`.`A` & CAST(~`r`.`B` AS SIGNED) AS SIGNED) BETWEEN `r`.`C` AND `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`C` BETWEEN CAST(`r`.`A` & CAST(~`r`.`B` AS SIGNED) AS SIGNED) AND `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN CAST(`r`.`A` | `r`.`B` AS SIGNED) = `r`.`C` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`C` < CAST(`r`.`A` | `r`.`B` AS SIGNED) THEN 1
		ELSE 0
	END,
	CASE
		WHEN CAST(`r`.`A` | `r`.`B` AS SIGNED) BETWEEN `r`.`C` AND `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` BETWEEN CAST(`r`.`B` | `r`.`C` AS SIGNED) AND `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN CAST(`r`.`A` | `r`.`B` AS SIGNED) IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` | `r`.`N` IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN CONCAT(Coalesce(`r`.`S`, ''), CAST(CAST(`r`.`A` | `r`.`B` AS SIGNED) AS CHAR(10))) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN CAST(`r`.`A` | `r`.`B` AS SIGNED) <= `r`.`C` AND `r`.`B` < `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT CAST(`r`.`A` | `r`.`B` AS SIGNED) <=> `r`.`N` THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT `r`.`N` <=> CAST(`r`.`A` | `r`.`B` AS SIGNED) THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` | -`r`.`N` IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN CAST(`r`.`A` | -`r`.`B` AS SIGNED) BETWEEN `r`.`C` AND `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`C` BETWEEN CAST(`r`.`A` | -`r`.`B` AS SIGNED) AND `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` | CAST(~`r`.`N` AS SIGNED) IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN CAST(`r`.`A` | CAST(~`r`.`B` AS SIGNED) AS SIGNED) BETWEEN `r`.`C` AND `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`C` BETWEEN CAST(`r`.`A` | CAST(~`r`.`B` AS SIGNED) AS SIGNED) AND `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN CAST(`r`.`A` ^ `r`.`B` AS SIGNED) = `r`.`C` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`C` < CAST(`r`.`A` ^ `r`.`B` AS SIGNED) THEN 1
		ELSE 0
	END,
	CASE
		WHEN CAST(`r`.`A` ^ `r`.`B` AS SIGNED) BETWEEN `r`.`C` AND `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` BETWEEN CAST(`r`.`B` ^ `r`.`C` AS SIGNED) AND `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN CAST(`r`.`A` ^ `r`.`B` AS SIGNED) IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` ^ `r`.`N` IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN CONCAT(Coalesce(`r`.`S`, ''), CAST(CAST(`r`.`A` ^ `r`.`B` AS SIGNED) AS CHAR(10))) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN CAST(`r`.`A` ^ `r`.`B` AS SIGNED) <= `r`.`C` AND `r`.`B` < `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT CAST(`r`.`A` ^ `r`.`B` AS SIGNED) <=> `r`.`N` THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT `r`.`N` <=> CAST(`r`.`A` ^ `r`.`B` AS SIGNED) THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` ^ -`r`.`N` IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN CAST(`r`.`A` ^ -`r`.`B` AS SIGNED) BETWEEN `r`.`C` AND `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`C` BETWEEN CAST(`r`.`A` ^ -`r`.`B` AS SIGNED) AND `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`A` ^ CAST(~`r`.`N` AS SIGNED) IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN CAST(`r`.`A` ^ CAST(~`r`.`B` AS SIGNED) AS SIGNED) BETWEEN `r`.`C` AND `r`.`A`
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`C` BETWEEN CAST(`r`.`A` ^ CAST(~`r`.`B` AS SIGNED) AS SIGNED) AND `r`.`A`
			THEN 1
		ELSE 0
	END,
	`r`.`A` * -`r`.`B` + `r`.`C`,
	`r`.`A` * CAST(~`r`.`B` AS SIGNED) + `r`.`C`,
	`r`.`A` * -`r`.`B` - `r`.`C`,
	`r`.`A` * CAST(~`r`.`B` AS SIGNED) - `r`.`C`,
	(`r`.`A` * -`r`.`B`) * `r`.`C`,
	(`r`.`A` * CAST(~`r`.`B` AS SIGNED)) * `r`.`C`,
	`r`.`A` * -`r`.`B` + `r`.`C`,
	`r`.`A` * CAST(~`r`.`B` AS SIGNED) + `r`.`C`,
	CASE
		WHEN -`r`.`A` = `r`.`C` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`C` = -`r`.`A` THEN 1
		ELSE 0
	END,
	CASE
		WHEN CAST(~`r`.`A` AS SIGNED) = `r`.`C` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`C` = CAST(~`r`.`A` AS SIGNED) THEN 1
		ELSE 0
	END,
	CASE
		WHEN -5 = `r`.`C` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`C` = -5 THEN 1
		ELSE 0
	END
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CASE
		WHEN -5 = `r`.`C` THEN 1
		ELSE 0
	END,
	CASE
		WHEN `r`.`C` = -5 THEN 1
		ELSE 0
	END
FROM
	`PrecedenceRow` `r`
ORDER BY
	`r`.`Id`

