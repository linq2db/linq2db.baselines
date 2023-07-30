BeforeExecute
-- MySql MySql.Official MySql

DELETE   `t1`
FROM
	`CollatedTable` `t1`

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @CaseSensitive VarChar(10) -- String
SET     @CaseSensitive = 'TestString'
DECLARE @CaseInsensitive VarChar(10) -- String
SET     @CaseInsensitive = 'TestString'

INSERT INTO `CollatedTable`
(
	`Id`,
	`CaseSensitive`,
	`CaseInsensitive`
)
VALUES
(
	@Id,
	@CaseSensitive,
	@CaseInsensitive
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`CollatedTable` `r`
WHERE
	`r`.`CaseSensitive` COLLATE utf8_bin LIKE '%stSt%' ESCAPE '~'

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`CollatedTable` `r`
WHERE
	`r`.`CaseInsensitive` COLLATE utf8_bin LIKE '%stSt%' ESCAPE '~'

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`CollatedTable` `r`
WHERE
	`r`.`CaseSensitive` COLLATE utf8_bin LIKE '%stst%' ESCAPE '~'

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`CollatedTable` `r`
WHERE
	`r`.`CaseInsensitive` COLLATE utf8_bin LIKE '%stst%' ESCAPE '~'

