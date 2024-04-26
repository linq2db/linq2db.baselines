﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE   `t1`
FROM
	`CollatedTable` `t1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`CollatedTable` `r`
WHERE
	LOCATE('stSt', `r`.`CaseSensitive`) > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`CollatedTable` `r`
WHERE
	LOCATE('stSt', `r`.`CaseInsensitive`) > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`CollatedTable` `r`
WHERE
	LOCATE('stst', `r`.`CaseSensitive`) > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`CollatedTable` `r`
WHERE
	LOCATE('stst', `r`.`CaseInsensitive`) > 0

