﻿BeforeExecute
-- MySql55 MySql

DELETE `t1`
FROM
	`CollatedTable` `t1`

BeforeExecute
-- MySql55 MySql
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
-- MySql55 MySql

SELECT
	Count(*)
FROM
	`CollatedTable` `r`
WHERE
	`r`.`CaseSensitive` LIKE 'TestSt%' ESCAPE '~'

BeforeExecute
-- MySql55 MySql

SELECT
	Count(*)
FROM
	`CollatedTable` `r`
WHERE
	`r`.`CaseInsensitive` LIKE 'TestSt%' ESCAPE '~'

BeforeExecute
-- MySql55 MySql

SELECT
	Count(*)
FROM
	`CollatedTable` `r`
WHERE
	`r`.`CaseSensitive` LIKE 'testst%' ESCAPE '~'

BeforeExecute
-- MySql55 MySql

SELECT
	Count(*)
FROM
	`CollatedTable` `r`
WHERE
	`r`.`CaseInsensitive` LIKE 'testst%' ESCAPE '~'

