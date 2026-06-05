-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 42
DECLARE @Name VarChar(4) -- String
SET     @Name = 'seed'
DECLARE @Version Int32
SET     @Version = 1
DECLARE @CreatedAt Datetime -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy VarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt Datetime -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL

INSERT INTO `UpsertTest`
(
	`Id`,
	`Name`,
	`Version`,
	`CreatedAt`,
	`CreatedBy`,
	`UpdatedAt`,
	`UpdatedBy`
)
VALUES
(
	@Id,
	@Name,
	@Version,
	@CreatedAt,
	@CreatedBy,
	@UpdatedAt,
	@UpdatedBy
)

