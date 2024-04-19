BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE   `_`
FROM
	`LinqDataTypes` `_`
WHERE
	`_`.`ID` > 1000

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @data Blob -- Binary
SET     @data = NULL

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`BinaryValue`,
	`BoolValue`
)
VALUES
(
	1001,
	@data,
	1
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE   `_`
FROM
	`LinqDataTypes` `_`
WHERE
	`_`.`ID` > 1000

