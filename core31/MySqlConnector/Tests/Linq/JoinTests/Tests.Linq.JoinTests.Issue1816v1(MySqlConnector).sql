BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `stVersions`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `stVersions`
(
	`inId`     INT NOT NULL,
	`inIdMain` INT NOT NULL,

	CONSTRAINT `PK_stVersions` PRIMARY KEY CLUSTERED (`inId`)
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `rlStatesTypesAndUserGroups`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `rlStatesTypesAndUserGroups`
(
	`inIdState` INT NOT NULL,
	`inIdType`  INT NOT NULL,

	CONSTRAINT `PK_rlStatesTypesAndUserGroups` PRIMARY KEY CLUSTERED (`inIdState`, `inIdType`)
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `stMain`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `stMain`
(
	`inId`     INT NOT NULL,
	`inIdType` INT NOT NULL,

	CONSTRAINT `PK_stMain` PRIMARY KEY CLUSTERED (`inId`)
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `stMain`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `rlStatesTypesAndUserGroups`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `stVersions`

