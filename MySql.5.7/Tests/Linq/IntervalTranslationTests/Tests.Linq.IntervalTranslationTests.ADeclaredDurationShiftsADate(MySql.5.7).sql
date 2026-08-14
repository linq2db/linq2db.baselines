-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InSeconds Int64
SET     @InSeconds = 5400
DECLARE @InTicks Int64
SET     @InTicks = 54000000000
DECLARE @Undeclared Int64
SET     @Undeclared = 54000000000
DECLARE @UndeclaredSeconds Int64
SET     @UndeclaredSeconds = 5400

INSERT INTO `DurationRow`
(
	`Id`,
	`InSeconds`,
	`InTicks`,
	`Undeclared`,
	`UndeclaredSeconds`
)
VALUES
(
	@Id,
	@InSeconds,
	@InTicks,
	@Undeclared,
	@UndeclaredSeconds
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	Date_Add('2026-03-01', Interval ((`r`.`InSeconds` * 10000000) DIV 10) Microsecond),
	Date_Sub('2026-03-01', Interval ((`r`.`InSeconds` * 10000000) DIV 10) Microsecond),
	Date_Add('2026-03-01', Interval (`r`.`InTicks` DIV 10) Microsecond)
FROM
	`DurationRow` `r`
LIMIT 2

