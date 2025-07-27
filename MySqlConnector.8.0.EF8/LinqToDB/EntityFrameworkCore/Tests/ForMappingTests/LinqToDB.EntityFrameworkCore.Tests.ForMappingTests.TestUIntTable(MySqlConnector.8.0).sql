Parameters:
@p0='?' (DbType = UInt16), @p1='?' (DbType = UInt16), @p2='?' (DbType = UInt32), @p3='?' (DbType = UInt32), @p4='?' (DbType = UInt64), @p5='?' (DbType = UInt64)

INSERT INTO `UIntTable` (`Field16`, `Field16N`, `Field32`, `Field32N`, `Field64`, `Field64N`)
VALUES (@p0, @p1, @p2, @p3, @p4, @p5);
SELECT `ID`
FROM `UIntTable`
WHERE ROW_COUNT() = 1 AND `ID` = LAST_INSERT_ID();


-- MySql.8.0.MySqlConnector MySql80 (asynchronously)
DECLARE @field64 UInt64
SET     @field64 = CAST(5 AS UNSIGNED)

SELECT
	`e`.`ID`,
	`e`.`Field16`,
	`e`.`Field32`,
	`e`.`Field64`,
	`e`.`Field16N`,
	`e`.`Field32N`,
	`e`.`Field64N`
FROM
	`UIntTable` `e`
WHERE
	`e`.`Field64` = @field64
LIMIT 1



