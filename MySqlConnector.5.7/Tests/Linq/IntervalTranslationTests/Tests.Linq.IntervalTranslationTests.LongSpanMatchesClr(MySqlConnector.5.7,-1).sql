-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '2045-06-05 04:03:02'
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = '1970-01-02'

INSERT INTO `EventRow`
(
	`Id`,
	`StartedOn`,
	`FinishedOn`
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10,
	CAST(TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10 AS DECIMAL(29, 10)) / 864000000000
FROM
	`EventRow` `r`
LIMIT 2

