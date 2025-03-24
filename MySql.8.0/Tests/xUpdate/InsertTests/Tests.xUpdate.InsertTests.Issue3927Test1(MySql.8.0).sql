﻿BeforeExecute
--  MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @PageNumber Int32
SET     @PageNumber = 9
DECLARE @serialNumber String(11) -- AnsiStringFixedLength
SET     @serialNumber = '12345678901'

INSERT INTO `Issue3927Table`
(
	`PageNumber`
)
SELECT
	@PageNumber
FROM
	`Issue3927Table` `display`
WHERE
	`display`.`SerialNumber` = @serialNumber

