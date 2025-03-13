-- MariaDB.10.MySqlConnector MySql
DECLARE @test Int32
SET     @test = 1

UPDATE
	`Employees` `e`
SET
	`e`.`Address` = `e`.`Address`
WHERE
	`e`.`EmployeeID` = @test



