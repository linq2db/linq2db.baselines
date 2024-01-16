BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `GroupSampleClass`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `GroupSampleClass`
(
	`Id1`   INT NOT NULL,
	`Id2`   INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id1 Int32
SET     @Id1 = 1
DECLARE @Id2 Int32
SET     @Id2 = 1
DECLARE @Value Int32
SET     @Value = 1

INSERT INTO `GroupSampleClass`
(
	`Id1`,
	`Id2`,
	`Value`
)
VALUES
(
	@Id1,
	@Id2,
	@Value
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id1 Int32
SET     @Id1 = 2
DECLARE @Id2 Int32
SET     @Id2 = 2
DECLARE @Value Int32
SET     @Value = 0

INSERT INTO `GroupSampleClass`
(
	`Id1`,
	`Id2`,
	`Value`
)
VALUES
(
	@Id1,
	@Id2,
	@Value
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id1 Int32
SET     @Id1 = 3
DECLARE @Id2 Int32
SET     @Id2 = 0
DECLARE @Value Int32
SET     @Value = 1

INSERT INTO `GroupSampleClass`
(
	`Id1`,
	`Id2`,
	`Value`
)
VALUES
(
	@Id1,
	@Id2,
	@Value
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id1 Int32
SET     @Id1 = 4
DECLARE @Id2 Int32
SET     @Id2 = 1
DECLARE @Value Int32
SET     @Value = 0

INSERT INTO `GroupSampleClass`
(
	`Id1`,
	`Id2`,
	`Value`
)
VALUES
(
	@Id1,
	@Id2,
	@Value
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id1 Int32
SET     @Id1 = 5
DECLARE @Id2 Int32
SET     @Id2 = 2
DECLARE @Value Int32
SET     @Value = 1

INSERT INTO `GroupSampleClass`
(
	`Id1`,
	`Id2`,
	`Value`
)
VALUES
(
	@Id1,
	@Id2,
	@Value
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id1 Int32
SET     @Id1 = 6
DECLARE @Id2 Int32
SET     @Id2 = 0
DECLARE @Value Int32
SET     @Value = 0

INSERT INTO `GroupSampleClass`
(
	`Id1`,
	`Id2`,
	`Value`
)
VALUES
(
	@Id1,
	@Id2,
	@Value
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id1 Int32
SET     @Id1 = 7
DECLARE @Id2 Int32
SET     @Id2 = 1
DECLARE @Value Int32
SET     @Value = 1

INSERT INTO `GroupSampleClass`
(
	`Id1`,
	`Id2`,
	`Value`
)
VALUES
(
	@Id1,
	@Id2,
	@Value
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id1 Int32
SET     @Id1 = 8
DECLARE @Id2 Int32
SET     @Id2 = 2
DECLARE @Value Int32
SET     @Value = 0

INSERT INTO `GroupSampleClass`
(
	`Id1`,
	`Id2`,
	`Value`
)
VALUES
(
	@Id1,
	@Id2,
	@Value
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id1 Int32
SET     @Id1 = 9
DECLARE @Id2 Int32
SET     @Id2 = 0
DECLARE @Value Int32
SET     @Value = 1

INSERT INTO `GroupSampleClass`
(
	`Id1`,
	`Id2`,
	`Value`
)
VALUES
(
	@Id1,
	@Id2,
	@Value
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id1 Int32
SET     @Id1 = 10
DECLARE @Id2 Int32
SET     @Id2 = 1
DECLARE @Value Int32
SET     @Value = 0

INSERT INTO `GroupSampleClass`
(
	`Id1`,
	`Id2`,
	`Value`
)
VALUES
(
	@Id1,
	@Id2,
	@Value
)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`Id1`,
	Count(*)
FROM
	(
		SELECT DISTINCT
			`selectParam`.`Id1`,
			`selectParam`.`Id2`,
			`selectParam`.`Value` as `Value_1`
		FROM
			`GroupSampleClass` `selectParam`
	) `t1`
GROUP BY
	`t1`.`Id1`,
	`t1`.`Id2`
WITH ROLLUP

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `GroupSampleClass`

