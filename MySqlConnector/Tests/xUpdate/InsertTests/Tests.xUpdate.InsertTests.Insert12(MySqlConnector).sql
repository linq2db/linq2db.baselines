﻿BeforeExecute
-- MySqlConnector MySql
DECLARE @FirstName VarChar(9) -- String
SET     @FirstName = 'FirstName'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'LastName'
DECLARE @Gender String(1) -- StringFixedLength
SET     @Gender = 'F'

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`Gender`
)
VALUES
(
	@FirstName,
	@LastName,
	@Gender
)

