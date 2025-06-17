BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`BooleanTable` `r`
WHERE
	`r`.`Value1` = 1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` = `r`.`Value4`) = ((
		SELECT
			COUNT(*)
		FROM
			`BooleanTable` `r_1`
		WHERE
			`r_1`.`Value1` = 1
	) = (`r`.`Value5` + @cnt)) OR
	`r`.`Value4` IS NULL AND `r`.`Value5` IS NULL

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` <> `r`.`Value4`) = ((
		SELECT
			COUNT(*)
		FROM
			`BooleanTable` `r_1`
		WHERE
			`r_1`.`Value1` = 1
	) = (`r`.`Value5` + @cnt)) OR
	`r`.`Value4` IS NULL AND `r`.`Value5` IS NULL

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` = `r`.`Value2`) = ((
		SELECT
			COUNT(*)
		FROM
			`BooleanTable` `r_1`
		WHERE
			`r_1`.`Value1` = 1
	) = (`r`.`Value5` + @cnt))

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` <> `r`.`Value2`) = ((
		SELECT
			COUNT(*)
		FROM
			`BooleanTable` `r_1`
		WHERE
			`r_1`.`Value1` = 1
	) = (`r`.`Value5` + @cnt))

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	((1=1)) = (((`r`.`Value1` = `r`.`Value4`) = ((
		SELECT
			COUNT(*)
		FROM
			`BooleanTable` `r_1`
		WHERE
			`r_1`.`Value1` = 1
	) = (`r`.`Value5` + @cnt)) OR `r`.`Value4` IS NULL AND `r`.`Value5` IS NULL) AND NOT (`r`.`Value4` IS NULL AND `r`.`Value5` IS NOT NULL) AND NOT (`r`.`Value4` IS NOT NULL AND `r`.`Value5` IS NULL))

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	((1=1)) = (((`r`.`Value1` <> `r`.`Value4`) = ((
		SELECT
			COUNT(*)
		FROM
			`BooleanTable` `r_1`
		WHERE
			`r_1`.`Value1` = 1
	) = (`r`.`Value5` + @cnt)) OR `r`.`Value4` IS NULL AND `r`.`Value5` IS NULL) AND NOT (`r`.`Value4` IS NULL AND `r`.`Value5` IS NOT NULL) AND NOT (`r`.`Value4` IS NOT NULL AND `r`.`Value5` IS NULL))

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	((1=1)) = (CASE
		WHEN (`r`.`Value1` = `r`.`Value2`) = ((
			SELECT
				COUNT(*)
			FROM
				`BooleanTable` `r_1`
			WHERE
				`r_1`.`Value1` = 1
		) = (`r`.`Value5` + @cnt))
			THEN 1
		ELSE 0
	END)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	((1=1)) = (CASE
		WHEN (`r`.`Value1` <> `r`.`Value2`) = ((
			SELECT
				COUNT(*)
			FROM
				`BooleanTable` `r_1`
			WHERE
				`r_1`.`Value1` = 1
		) = (`r`.`Value5` + @cnt))
			THEN 1
		ELSE 0
	END)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` = `r`.`Value4`) <> ((
		SELECT
			COUNT(*)
		FROM
			`BooleanTable` `r_1`
		WHERE
			`r_1`.`Value1` = 1
	) = (`r`.`Value5` + @cnt)) OR
	`r`.`Value4` IS NULL AND `r`.`Value5` IS NOT NULL OR
	`r`.`Value4` IS NOT NULL AND `r`.`Value5` IS NULL

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` <> `r`.`Value4`) <> ((
		SELECT
			COUNT(*)
		FROM
			`BooleanTable` `r_1`
		WHERE
			`r_1`.`Value1` = 1
	) = (`r`.`Value5` + @cnt)) OR
	`r`.`Value4` IS NULL AND `r`.`Value5` IS NOT NULL OR
	`r`.`Value4` IS NOT NULL AND `r`.`Value5` IS NULL

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	CASE
		WHEN (`r`.`Value1` = `r`.`Value2`) = ((
			SELECT
				COUNT(*)
			FROM
				`BooleanTable` `r_1`
			WHERE
				`r_1`.`Value1` = 1
		) = (`r`.`Value5` + @cnt))
			THEN 0
		ELSE 1
	END

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	CASE
		WHEN (`r`.`Value1` <> `r`.`Value2`) = ((
			SELECT
				COUNT(*)
			FROM
				`BooleanTable` `r_1`
			WHERE
				`r_1`.`Value1` = 1
		) = (`r`.`Value5` + @cnt))
			THEN 0
		ELSE 1
	END

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	((1=1)) = (((`r`.`Value1` = `r`.`Value4`) <> ((
		SELECT
			COUNT(*)
		FROM
			`BooleanTable` `r_1`
		WHERE
			`r_1`.`Value1` = 1
	) = (`r`.`Value5` + @cnt)) OR `r`.`Value4` IS NULL AND `r`.`Value5` IS NOT NULL OR `r`.`Value4` IS NOT NULL AND `r`.`Value5` IS NULL) AND NOT (`r`.`Value4` IS NULL AND `r`.`Value5` IS NULL))

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	((1=1)) = (((`r`.`Value1` <> `r`.`Value4`) <> ((
		SELECT
			COUNT(*)
		FROM
			`BooleanTable` `r_1`
		WHERE
			`r_1`.`Value1` = 1
	) = (`r`.`Value5` + @cnt)) OR `r`.`Value4` IS NULL AND `r`.`Value5` IS NOT NULL OR `r`.`Value4` IS NOT NULL AND `r`.`Value5` IS NULL) AND NOT (`r`.`Value4` IS NULL AND `r`.`Value5` IS NULL))

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	((1=1)) = (CASE
		WHEN (`r`.`Value1` = `r`.`Value2`) = ((
			SELECT
				COUNT(*)
			FROM
				`BooleanTable` `r_1`
			WHERE
				`r_1`.`Value1` = 1
		) = (`r`.`Value5` + @cnt))
			THEN 0
		ELSE 1
	END)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	((1=1)) = (CASE
		WHEN (`r`.`Value1` <> `r`.`Value2`) = ((
			SELECT
				COUNT(*)
			FROM
				`BooleanTable` `r_1`
			WHERE
				`r_1`.`Value1` = 1
		) = (`r`.`Value5` + @cnt))
			THEN 0
		ELSE 1
	END)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value4` + @cnt) >= ((
		SELECT
			COUNT(*)
		FROM
			`BooleanTable` `r_1`
		WHERE
			`r_1`.`Value1` = 1
	) + `r`.`Value5`)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value4` + @cnt) > ((
		SELECT
			COUNT(*)
		FROM
			`BooleanTable` `r_1`
		WHERE
			`r_1`.`Value1` = 1
	) + `r`.`Value5`)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value4` + @cnt) <= ((
		SELECT
			COUNT(*)
		FROM
			`BooleanTable` `r_1`
		WHERE
			`r_1`.`Value1` = 1
	) + `r`.`Value5`)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value4` + @cnt) < ((
		SELECT
			COUNT(*)
		FROM
			`BooleanTable` `r_1`
		WHERE
			`r_1`.`Value1` = 1
	) + `r`.`Value5`)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value2` + @cnt) >= ((
		SELECT
			COUNT(*)
		FROM
			`BooleanTable` `r_1`
		WHERE
			`r_1`.`Value1` = 1
	) + `r`.`Value5`)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value2` + @cnt) > ((
		SELECT
			COUNT(*)
		FROM
			`BooleanTable` `r_1`
		WHERE
			`r_1`.`Value1` = 1
	) + `r`.`Value5`)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value2` + @cnt) <= ((
		SELECT
			COUNT(*)
		FROM
			`BooleanTable` `r_1`
		WHERE
			`r_1`.`Value1` = 1
	) + `r`.`Value5`)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value2` + @cnt) < ((
		SELECT
			COUNT(*)
		FROM
			`BooleanTable` `r_1`
		WHERE
			`r_1`.`Value1` = 1
	) + `r`.`Value5`)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	((1=1)) = (CASE
		WHEN (`r`.`Value4` + @cnt) >= ((
			SELECT
				COUNT(*)
			FROM
				`BooleanTable` `r_1`
			WHERE
				`r_1`.`Value1` = 1
		) + `r`.`Value5`)
			THEN 1
		ELSE 0
	END)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	((1=1)) = (CASE
		WHEN (`r`.`Value4` + @cnt) > ((
			SELECT
				COUNT(*)
			FROM
				`BooleanTable` `r_1`
			WHERE
				`r_1`.`Value1` = 1
		) + `r`.`Value5`)
			THEN 1
		ELSE 0
	END)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	((1=1)) = (CASE
		WHEN (`r`.`Value4` + @cnt) <= ((
			SELECT
				COUNT(*)
			FROM
				`BooleanTable` `r_1`
			WHERE
				`r_1`.`Value1` = 1
		) + `r`.`Value5`)
			THEN 1
		ELSE 0
	END)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	((1=1)) = (CASE
		WHEN (`r`.`Value4` + @cnt) < ((
			SELECT
				COUNT(*)
			FROM
				`BooleanTable` `r_1`
			WHERE
				`r_1`.`Value1` = 1
		) + `r`.`Value5`)
			THEN 1
		ELSE 0
	END)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	((1=1)) = (CASE
		WHEN (`r`.`Value2` + @cnt) >= ((
			SELECT
				COUNT(*)
			FROM
				`BooleanTable` `r_1`
			WHERE
				`r_1`.`Value1` = 1
		) + `r`.`Value5`)
			THEN 1
		ELSE 0
	END)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	((1=1)) = (CASE
		WHEN (`r`.`Value2` + @cnt) > ((
			SELECT
				COUNT(*)
			FROM
				`BooleanTable` `r_1`
			WHERE
				`r_1`.`Value1` = 1
		) + `r`.`Value5`)
			THEN 1
		ELSE 0
	END)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	((1=1)) = (CASE
		WHEN (`r`.`Value2` + @cnt) <= ((
			SELECT
				COUNT(*)
			FROM
				`BooleanTable` `r_1`
			WHERE
				`r_1`.`Value1` = 1
		) + `r`.`Value5`)
			THEN 1
		ELSE 0
	END)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	((1=1)) = (CASE
		WHEN (`r`.`Value2` + @cnt) < ((
			SELECT
				COUNT(*)
			FROM
				`BooleanTable` `r_1`
			WHERE
				`r_1`.`Value1` = 1
		) + `r`.`Value5`)
			THEN 1
		ELSE 0
	END)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

