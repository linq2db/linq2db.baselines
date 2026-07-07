-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`TestIdentity`

-- MariaDB.11 MariaDB.10.MySqlConnector
-- Batch 1
INSERT INTO `TestIdentity` () VALUES ()

-- Batch 2
SELECT
	LAST_INSERT_ID() as `c1`
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`TestIdentity`

