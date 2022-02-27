BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @guid VarChar(36) -- String
SET     @guid = 'febe3eca-cb5f-40b2-ad39-2979d312afca'

SELECT
	`t`.`GuidValue`
FROM
	`LinqDataTypes` `t`
WHERE
	Cast(`t`.`GuidValue` as CHAR(36)) = @guid

