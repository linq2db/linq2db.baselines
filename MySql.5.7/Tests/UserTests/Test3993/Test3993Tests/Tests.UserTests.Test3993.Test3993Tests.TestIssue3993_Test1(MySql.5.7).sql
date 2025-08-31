BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	Date_Add(`t`.`StartDateTime`, Interval ((-`t`.`PreNotification` / 10000) * 1000) Microsecond)
FROM
	`Common_Topology_Locations` `t`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`StartDateTime`,
	`t1`.`StartDateTime2`,
	`t1`.`EndDateTime`,
	`t1`.`PreNotification`,
	`t1`.`PreNotification2`,
	`t1`.`PreNotification3`,
	`t1`.`StrField`,
	`t1`.`Status`
FROM
	`Common_Topology_Locations` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`StartDateTime`,
	`x`.`StartDateTime2`,
	`x`.`EndDateTime`,
	`x`.`PreNotification`,
	`x`.`PreNotification2`,
	`x`.`PreNotification3`,
	`x`.`StrField`,
	`x`.`Status`
FROM
	`Common_Topology_Locations` `x`
WHERE
	Extract(year from `x`.`StartDateTime2`) = 2023

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Value Int64
SET     @Value = 300000

SELECT
	`x`.`StartDateTime`,
	`x`.`StartDateTime2`,
	`x`.`EndDateTime`,
	`x`.`PreNotification`,
	`x`.`PreNotification2`,
	`x`.`PreNotification3`,
	`x`.`StrField`,
	`x`.`Status`
FROM
	`Common_Topology_Locations` `x`
WHERE
	Date_Add(`x`.`StartDateTime2`, Interval (@Value * 1000) Microsecond) > '2025-08-31 18:03:18.612'

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Value Int64
SET     @Value = 3153600000000

SELECT
	`x`.`StartDateTime`,
	`x`.`StartDateTime2`,
	`x`.`EndDateTime`,
	`x`.`PreNotification`,
	`x`.`PreNotification2`,
	`x`.`PreNotification3`,
	`x`.`StrField`,
	`x`.`Status`
FROM
	`Common_Topology_Locations` `x`
WHERE
	Date_Add(`x`.`StartDateTime2`, Interval (@Value * 1000) Microsecond) > '2025-08-31 18:03:18.617'

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	CAST(`x`.`PreNotification` / 10000 AS DECIMAL(29, 10)),
	CAST(`x`.`PreNotification` / 10000000 AS DECIMAL(29, 10))
FROM
	`Common_Topology_Locations` `x`
WHERE
	CAST(`x`.`PreNotification` / 10000000 AS DECIMAL(29, 10)) < CAST(`x`.`PreNotification` / 10000 AS DECIMAL(29, 10))

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`StartDateTime`,
	`x`.`PreNotification`,
	`x`.`NotificationDateTime`,
	`x`.`NotificationDateTime2`,
	`x`.`NotificationDateTime3`,
	`x`.`NotificationDateTime4`,
	`x`.`NotificationDateTime5`,
	`x`.`NotificationDateTime6`,
	`x`.`NotificationDateTime7`,
	`x`.`Value_1`,
	`x`.`Day_1`
FROM
	(
		SELECT
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (`t`.`PreNotification` / 10000)) * 1000) Microsecond) as `NotificationDateTime`,
			`t`.`StartDateTime`,
			`t`.`PreNotification`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (`t`.`PreNotification2` / 10000)) * 1000) Microsecond) as `NotificationDateTime2`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (`t`.`PreNotification3` / 10000)) * 1000) Microsecond) as `NotificationDateTime3`,
			Date_Add(`t`.`StartDateTime`, Interval ((-`t`.`PreNotification3` / 10000) * 1000) Microsecond) as `NotificationDateTime4`,
			Date_Add(`t`.`StartDateTime`, Interval ((-`t`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime5`,
			Date_Add(`t`.`StartDateTime`, Interval ((`t`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime6`,
			Date_Add(`t`.`StartDateTime2`, Interval ((-`t`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime7`,
			Date_Add(`t`.`StartDateTime2`, Interval ((-`t`.`PreNotification3` / 10000) * 1000) Microsecond) as `Value_1`,
			Extract(day from `t`.`StrField`) as `Day_1`
		FROM
			`Common_Topology_Locations` `t`
	) `x`
WHERE
	`x`.`NotificationDateTime` < '2020-02-29 17:54:55.123'

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`StartDateTime`,
	`x`.`PreNotification`,
	`x`.`NotificationDateTime`,
	`x`.`NotificationDateTime2`,
	`x`.`NotificationDateTime3`,
	`x`.`NotificationDateTime4`,
	`x`.`NotificationDateTime5`,
	`x`.`NotificationDateTime6`,
	`x`.`NotificationDateTime7`,
	`x`.`Value_1`,
	`x`.`Day_1`
FROM
	(
		SELECT
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (`t`.`PreNotification2` / 10000)) * 1000) Microsecond) as `NotificationDateTime2`,
			`t`.`StartDateTime`,
			`t`.`PreNotification`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (`t`.`PreNotification` / 10000)) * 1000) Microsecond) as `NotificationDateTime`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (`t`.`PreNotification3` / 10000)) * 1000) Microsecond) as `NotificationDateTime3`,
			Date_Add(`t`.`StartDateTime`, Interval ((-`t`.`PreNotification3` / 10000) * 1000) Microsecond) as `NotificationDateTime4`,
			Date_Add(`t`.`StartDateTime`, Interval ((-`t`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime5`,
			Date_Add(`t`.`StartDateTime`, Interval ((`t`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime6`,
			Date_Add(`t`.`StartDateTime2`, Interval ((-`t`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime7`,
			Date_Add(`t`.`StartDateTime2`, Interval ((-`t`.`PreNotification3` / 10000) * 1000) Microsecond) as `Value_1`,
			Extract(day from `t`.`StrField`) as `Day_1`
		FROM
			`Common_Topology_Locations` `t`
	) `x`
WHERE
	`x`.`NotificationDateTime2` < '2020-02-29 17:54:55.123'

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`StartDateTime`,
	`x`.`PreNotification`,
	`x`.`NotificationDateTime`,
	`x`.`NotificationDateTime2`,
	`x`.`NotificationDateTime3`,
	`x`.`NotificationDateTime4`,
	`x`.`NotificationDateTime5`,
	`x`.`NotificationDateTime6`,
	`x`.`NotificationDateTime7`,
	`x`.`Value_1`,
	`x`.`Day_1`
FROM
	(
		SELECT
			Date_Add(`t`.`StartDateTime`, Interval ((-`t`.`PreNotification3` / 10000) * 1000) Microsecond) as `NotificationDateTime4`,
			`t`.`StartDateTime`,
			`t`.`PreNotification`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (`t`.`PreNotification` / 10000)) * 1000) Microsecond) as `NotificationDateTime`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (`t`.`PreNotification2` / 10000)) * 1000) Microsecond) as `NotificationDateTime2`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (`t`.`PreNotification3` / 10000)) * 1000) Microsecond) as `NotificationDateTime3`,
			Date_Add(`t`.`StartDateTime`, Interval ((-`t`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime5`,
			Date_Add(`t`.`StartDateTime`, Interval ((`t`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime6`,
			Date_Add(`t`.`StartDateTime2`, Interval ((-`t`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime7`,
			Date_Add(`t`.`StartDateTime2`, Interval ((-`t`.`PreNotification3` / 10000) * 1000) Microsecond) as `Value_1`,
			Extract(day from `t`.`StrField`) as `Day_1`
		FROM
			`Common_Topology_Locations` `t`
	) `x`
WHERE
	`x`.`NotificationDateTime4` < '2020-02-29 17:54:55.123'

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`StartDateTime`,
	`x`.`PreNotification`,
	`x`.`NotificationDateTime`,
	`x`.`NotificationDateTime2`,
	`x`.`NotificationDateTime3`,
	`x`.`NotificationDateTime4`,
	`x`.`NotificationDateTime5`,
	`x`.`NotificationDateTime6`,
	`x`.`NotificationDateTime7`,
	`x`.`Value_1`,
	`x`.`Day_1`
FROM
	(
		SELECT
			Date_Add(`t`.`StartDateTime`, Interval ((-`t`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime5`,
			`t`.`StartDateTime`,
			`t`.`PreNotification`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (`t`.`PreNotification` / 10000)) * 1000) Microsecond) as `NotificationDateTime`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (`t`.`PreNotification2` / 10000)) * 1000) Microsecond) as `NotificationDateTime2`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (`t`.`PreNotification3` / 10000)) * 1000) Microsecond) as `NotificationDateTime3`,
			Date_Add(`t`.`StartDateTime`, Interval ((-`t`.`PreNotification3` / 10000) * 1000) Microsecond) as `NotificationDateTime4`,
			Date_Add(`t`.`StartDateTime`, Interval ((`t`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime6`,
			Date_Add(`t`.`StartDateTime2`, Interval ((-`t`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime7`,
			Date_Add(`t`.`StartDateTime2`, Interval ((-`t`.`PreNotification3` / 10000) * 1000) Microsecond) as `Value_1`,
			Extract(day from `t`.`StrField`) as `Day_1`
		FROM
			`Common_Topology_Locations` `t`
	) `x`
WHERE
	`x`.`NotificationDateTime5` < '2020-02-29 17:54:55.123'

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`StartDateTime`,
	`x`.`PreNotification`,
	`x`.`NotificationDateTime`,
	`x`.`NotificationDateTime2`,
	`x`.`NotificationDateTime3`,
	`x`.`NotificationDateTime4`,
	`x`.`NotificationDateTime5`,
	`x`.`NotificationDateTime6`,
	`x`.`NotificationDateTime7`,
	`x`.`Value_1`,
	`x`.`Day_1`
FROM
	(
		SELECT
			Date_Add(`t`.`StartDateTime`, Interval ((`t`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime6`,
			`t`.`StartDateTime`,
			`t`.`PreNotification`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (`t`.`PreNotification` / 10000)) * 1000) Microsecond) as `NotificationDateTime`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (`t`.`PreNotification2` / 10000)) * 1000) Microsecond) as `NotificationDateTime2`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (`t`.`PreNotification3` / 10000)) * 1000) Microsecond) as `NotificationDateTime3`,
			Date_Add(`t`.`StartDateTime`, Interval ((-`t`.`PreNotification3` / 10000) * 1000) Microsecond) as `NotificationDateTime4`,
			Date_Add(`t`.`StartDateTime`, Interval ((-`t`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime5`,
			Date_Add(`t`.`StartDateTime2`, Interval ((-`t`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime7`,
			Date_Add(`t`.`StartDateTime2`, Interval ((-`t`.`PreNotification3` / 10000) * 1000) Microsecond) as `Value_1`,
			Extract(day from `t`.`StrField`) as `Day_1`
		FROM
			`Common_Topology_Locations` `t`
	) `x`
WHERE
	`x`.`NotificationDateTime6` < '2020-02-29 17:54:55.123'

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`StartDateTime`,
	`x`.`PreNotification`,
	`x`.`NotificationDateTime`,
	`x`.`NotificationDateTime2`,
	`x`.`NotificationDateTime3`,
	`x`.`NotificationDateTime4`,
	`x`.`NotificationDateTime5`,
	`x`.`NotificationDateTime6`,
	`x`.`NotificationDateTime7`,
	`x`.`Value_1`,
	`x`.`Day_1`
FROM
	(
		SELECT
			Date_Add(`t`.`StartDateTime2`, Interval ((-`t`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime7`,
			`t`.`StartDateTime`,
			`t`.`PreNotification`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (`t`.`PreNotification` / 10000)) * 1000) Microsecond) as `NotificationDateTime`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (`t`.`PreNotification2` / 10000)) * 1000) Microsecond) as `NotificationDateTime2`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (`t`.`PreNotification3` / 10000)) * 1000) Microsecond) as `NotificationDateTime3`,
			Date_Add(`t`.`StartDateTime`, Interval ((-`t`.`PreNotification3` / 10000) * 1000) Microsecond) as `NotificationDateTime4`,
			Date_Add(`t`.`StartDateTime`, Interval ((-`t`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime5`,
			Date_Add(`t`.`StartDateTime`, Interval ((`t`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime6`,
			Date_Add(`t`.`StartDateTime2`, Interval ((-`t`.`PreNotification3` / 10000) * 1000) Microsecond) as `Value_1`,
			Extract(day from `t`.`StrField`) as `Day_1`
		FROM
			`Common_Topology_Locations` `t`
	) `x`
WHERE
	`x`.`NotificationDateTime7` < '2020-02-29 17:54:55.123'

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`StartDateTime`,
	`x`.`PreNotification`,
	`x`.`NotificationDateTime`,
	`x`.`NotificationDateTime2`,
	`x`.`NotificationDateTime3`,
	`x`.`NotificationDateTime4`,
	`x`.`NotificationDateTime5`,
	`x`.`NotificationDateTime6`,
	`x`.`NotificationDateTime7`,
	`x`.`Value_1`,
	`x`.`Day_1`
FROM
	(
		SELECT
			Date_Add(`t`.`StartDateTime2`, Interval ((-`t`.`PreNotification3` / 10000) * 1000) Microsecond) as `Value_1`,
			`t`.`StartDateTime`,
			`t`.`PreNotification`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (`t`.`PreNotification` / 10000)) * 1000) Microsecond) as `NotificationDateTime`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (`t`.`PreNotification2` / 10000)) * 1000) Microsecond) as `NotificationDateTime2`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (`t`.`PreNotification3` / 10000)) * 1000) Microsecond) as `NotificationDateTime3`,
			Date_Add(`t`.`StartDateTime`, Interval ((-`t`.`PreNotification3` / 10000) * 1000) Microsecond) as `NotificationDateTime4`,
			Date_Add(`t`.`StartDateTime`, Interval ((-`t`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime5`,
			Date_Add(`t`.`StartDateTime`, Interval ((`t`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime6`,
			Date_Add(`t`.`StartDateTime2`, Interval ((-`t`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime7`,
			Extract(day from `t`.`StrField`) as `Day_1`
		FROM
			`Common_Topology_Locations` `t`
	) `x`
WHERE
	`x`.`Value_1` < '2020-02-29 17:54:55.123'

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`NotificationDateTime4`
FROM
	(
		SELECT
			Date_Add(`t`.`StartDateTime`, Interval ((-`t`.`PreNotification3` / 10000) * 1000) Microsecond) as `NotificationDateTime4`
		FROM
			`Common_Topology_Locations` `t`
	) `x`
WHERE
	`x`.`NotificationDateTime4` < '2020-02-29 17:54:55.123'

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	TIMESTAMPDIFF(MICROSECOND, `t`.`StartDateTime`, `t`.`EndDateTime`) * 10
FROM
	`Common_Topology_Locations` `t`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	TIMESTAMPDIFF(MICROSECOND, `x`.`StartDateTime`, `x`.`EndDateTime`) * 10
FROM
	`Common_Topology_Locations` `x`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @p Int64
SET     @p = 180000000000

SELECT
	`x`.`diff`
FROM
	(
		SELECT
			TIMESTAMPDIFF(MICROSECOND, `t`.`StartDateTime`, `t`.`EndDateTime`) * 10 as `diff`
		FROM
			`Common_Topology_Locations` `t`
	) `x`
WHERE
	`x`.`diff` < @p

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	TIMESTAMPDIFF(MICROSECOND, `x`.`StartDateTime`, `x`.`EndDateTime`) * 10
FROM
	`Common_Topology_Locations` `x`
WHERE
	CAST((TIMESTAMPDIFF(MICROSECOND, `x`.`StartDateTime`, `x`.`EndDateTime`) * 10) / 36000000000 AS DECIMAL(29, 10)) < 5

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @p Int64
SET     @p = 72000000000

SELECT
	`x`.`diff`
FROM
	(
		SELECT
			TIMESTAMPDIFF(MICROSECOND, `t`.`StartDateTime`, `t`.`EndDateTime`) * 10 as `diff`
		FROM
			`Common_Topology_Locations` `t`
	) `x`
WHERE
	`x`.`diff` < @p

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	TIMESTAMPDIFF(MICROSECOND, `x`.`StartDateTime`, `x`.`EndDateTime`) * 10
FROM
	`Common_Topology_Locations` `x`
WHERE
	CAST((TIMESTAMPDIFF(MICROSECOND, `x`.`StartDateTime`, `x`.`EndDateTime`) * 10) / 36000000000 AS DECIMAL(29, 10)) < 2

