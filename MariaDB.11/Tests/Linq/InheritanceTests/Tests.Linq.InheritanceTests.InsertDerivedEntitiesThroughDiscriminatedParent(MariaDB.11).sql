-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Type VarChar(23) -- String
SET     @Type = 'InheritanceInsertChildA'
DECLARE @StringValue VarChar(9) -- String
SET     @StringValue = 'SomeValue'

INSERT INTO `InheritInsertParent`
(
	`Type`,
	`StringValue`
)
VALUES
(
	@Type,
	@StringValue
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Type VarChar(23) -- String
SET     @Type = 'InheritanceInsertChildB'
DECLARE @IntValue Int32
SET     @IntValue = 911

INSERT INTO `InheritInsertParent`
(
	`Type`,
	`IntValue`
)
VALUES
(
	@Type,
	@IntValue
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	COUNT(*)
FROM
	`InheritInsertParent` `t1`

