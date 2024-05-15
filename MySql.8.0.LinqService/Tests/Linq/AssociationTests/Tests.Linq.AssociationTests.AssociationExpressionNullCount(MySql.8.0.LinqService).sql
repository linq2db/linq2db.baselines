BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `NotNullParent`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `NotNullParent`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ID Int32
SET     @ID = 1

INSERT INTO `NotNullParent`
(
	`ID`
)
VALUES
(
	@ID
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ID Int32
SET     @ID = 2

INSERT INTO `NotNullParent`
(
	`ID`
)
VALUES
(
	@ID
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `NotNullChild`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `NotNullChild`
(
	`ParentID` INT NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ParentID Int32
SET     @ParentID = 1

INSERT INTO `NotNullChild`
(
	`ParentID`
)
VALUES
(
	@ParentID
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`NotNullParent` `p`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `NotNullChild`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `NotNullParent`

