BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @testedList VarChar(20) -- String
SET     @testedList = '[{"Value":"Value1"}]'

SELECT
	`m_1`.`Id`,
	`m_1`.`Id`,
	`m_1`.`Value1`,
	`m_1`.`Value2`,
	`m_1`.`Enum`,
	`m_1`.`EnumNullable`,
	`m_1`.`EnumWithNull`,
	`m_1`.`EnumWithNullDeclarative`,
	`m_1`.`BoolValue`,
	`m_1`.`AnotherBoolValue`,
	`m_1`.`DateTimeNullable`
FROM
	`ValueConversion` `m_1`
WHERE
	@testedList = `m_1`.`Value2`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @testedList VarChar(20) -- String
SET     @testedList = '[{"Value":"Value1"}]'

SELECT
	`g_1`.`Id`
FROM
	`ValueConversion` `g_1`
WHERE
	@testedList = `g_1`.`Value2`
GROUP BY
	`g_1`.`Id`

