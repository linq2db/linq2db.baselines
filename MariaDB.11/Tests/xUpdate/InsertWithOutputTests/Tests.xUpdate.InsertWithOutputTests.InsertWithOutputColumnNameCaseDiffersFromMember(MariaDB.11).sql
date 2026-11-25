-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 123
DECLARE @Nesto VarChar(5) -- String
SET     @Nesto = 'Nesto'
DECLARE @Nest VarChar(6) -- String
SET     @Nest = 'Nessss'
DECLARE @Whatsov VarChar(7) -- String
SET     @Whatsov = 'Whatsov'
DECLARE @Co2Grund VarChar(3) -- String
SET     @Co2Grund = 'xxx'
DECLARE @Co2Aend VarChar(4) -- String
SET     @Co2Aend = 'What'

INSERT INTO `OutputColumnRenamedTable`
(
	`Id`,
	`Nesto`,
	`Nest`,
	`WhatSov`,
	`Co2grund`,
	`Co2aend`
)
VALUES
(
	@Id,
	@Nesto,
	@Nest,
	@Whatsov,
	@Co2Grund,
	@Co2Aend
)
RETURNING
	`OutputColumnRenamedTable`.`Id`,
	`OutputColumnRenamedTable`.`Nesto`,
	`OutputColumnRenamedTable`.`Nest`,
	`OutputColumnRenamedTable`.`WhatSov`,
	`OutputColumnRenamedTable`.`Co2grund`,
	`OutputColumnRenamedTable`.`Co2aend`

