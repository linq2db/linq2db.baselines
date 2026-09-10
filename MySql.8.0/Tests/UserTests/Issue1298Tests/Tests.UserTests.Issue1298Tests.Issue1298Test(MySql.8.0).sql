-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int64
SET     @Id = 1
DECLARE @asdfgh VarChar(4) -- String
SET     @asdfgh = 'res1'

INSERT INTO `qwerty`
(
	`Id`,
	`asdfgh`
)
VALUES
(
	@Id,
	@asdfgh
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int64
SET     @Id = 100500
DECLARE @asdfgh VarChar(9) -- String
SET     @asdfgh = 'res100500'

INSERT INTO `qwerty`
(
	`Id`,
	`asdfgh`
)
VALUES
(
	@Id,
	@asdfgh
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ref1 Int64
SET     @ref1 = 100500
DECLARE @y1_q1_ref1 Int64
SET     @y1_q1_ref1 = 100500

INSERT INTO `mega_composites`
(
	`ref1`,
	`y1.q1.ref1`
)
VALUES
(
	@ref1,
	@y1_q1_ref1
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ref1 Int64
SET     @ref1 = 1
DECLARE @y1_q1_ref1 Int64
SET     @y1_q1_ref1 = 100500

INSERT INTO `mega_composites`
(
	`ref1`,
	`y1.q1.ref1`
)
VALUES
(
	@ref1,
	@y1_q1_ref1
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ref1 Int64
SET     @ref1 = 100500
DECLARE @y1_q1_ref1 Int64
SET     @y1_q1_ref1 = 1

INSERT INTO `mega_composites`
(
	`ref1`,
	`y1.q1.ref1`
)
VALUES
(
	@ref1,
	@y1_q1_ref1
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @take Int32
SET     @take = 2

SELECT
	`x`.`ref1`,
	(
		SELECT
			`q`.`asdfgh`
		FROM
			`qwerty` `q`
		WHERE
			`q`.`Id` = `x`.`ref1`
		LIMIT 1
	)
FROM
	`mega_composites` `x`
LIMIT @take

