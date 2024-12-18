BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue3674Tests`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue3674Tests`
(
	`Code`         VARCHAR(30) NOT NULL,
	`DIM_Company`  VARCHAR(30)     NULL,
	`DIM_Branch`   VARCHAR(30)     NULL,
	`DIM_Location` VARCHAR(30)     NULL,
	`DIM_MSegment` VARCHAR(30)     NULL,
	`DIM_Make`     VARCHAR(30)     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`Code`,
	`p`.`DIM_Company`,
	`p`.`DIM_Branch`,
	`p`.`DIM_Location`,
	`p`.`DIM_MSegment`,
	`p`.`DIM_Make`
FROM
	`Issue3674Tests` `p`
WHERE
	`p`.`Code` = '42' AND
	(`p`.`DIM_Company` IS NULL OR `p`.`DIM_Company` = '' AND `p`.`DIM_Company` IS NOT NULL OR `p`.`DIM_Company` = '1' AND `p`.`DIM_Company` IS NOT NULL OR `p`.`DIM_Company` = '2' AND `p`.`DIM_Company` IS NOT NULL OR `p`.`DIM_Company` = '3' AND `p`.`DIM_Company` IS NOT NULL OR `p`.`DIM_Company` = '4' AND `p`.`DIM_Company` IS NOT NULL OR `p`.`DIM_Company` = '5' AND `p`.`DIM_Company` IS NOT NULL OR `p`.`DIM_Company` = '6' AND `p`.`DIM_Company` IS NOT NULL OR `p`.`DIM_Company` = '7' AND `p`.`DIM_Company` IS NOT NULL OR `p`.`DIM_Company` = '8' AND `p`.`DIM_Company` IS NOT NULL OR `p`.`DIM_Company` = '9' AND `p`.`DIM_Company` IS NOT NULL OR `p`.`DIM_Company` = '0' AND `p`.`DIM_Company` IS NOT NULL) AND
	(`p`.`DIM_Branch` IS NULL OR `p`.`DIM_Branch` = '' AND `p`.`DIM_Branch` IS NOT NULL OR `p`.`DIM_Branch` = '1' AND `p`.`DIM_Branch` IS NOT NULL OR `p`.`DIM_Branch` = '2' AND `p`.`DIM_Branch` IS NOT NULL OR `p`.`DIM_Branch` = '3' AND `p`.`DIM_Branch` IS NOT NULL OR `p`.`DIM_Branch` = '4' AND `p`.`DIM_Branch` IS NOT NULL OR `p`.`DIM_Branch` = '5' AND `p`.`DIM_Branch` IS NOT NULL OR `p`.`DIM_Branch` = '6' AND `p`.`DIM_Branch` IS NOT NULL OR `p`.`DIM_Branch` = '7' AND `p`.`DIM_Branch` IS NOT NULL OR `p`.`DIM_Branch` = '8' AND `p`.`DIM_Branch` IS NOT NULL OR `p`.`DIM_Branch` = '9' AND `p`.`DIM_Branch` IS NOT NULL OR `p`.`DIM_Branch` = '0' AND `p`.`DIM_Branch` IS NOT NULL) AND
	(`p`.`DIM_Location` IS NULL OR `p`.`DIM_Location` = '' AND `p`.`DIM_Location` IS NOT NULL OR `p`.`DIM_Location` = '1' AND `p`.`DIM_Location` IS NOT NULL OR `p`.`DIM_Location` = '2' AND `p`.`DIM_Location` IS NOT NULL OR `p`.`DIM_Location` = '3' AND `p`.`DIM_Location` IS NOT NULL OR `p`.`DIM_Location` = '4' AND `p`.`DIM_Location` IS NOT NULL OR `p`.`DIM_Location` = '5' AND `p`.`DIM_Location` IS NOT NULL OR `p`.`DIM_Location` = '6' AND `p`.`DIM_Location` IS NOT NULL OR `p`.`DIM_Location` = '7' AND `p`.`DIM_Location` IS NOT NULL OR `p`.`DIM_Location` = '8' AND `p`.`DIM_Location` IS NOT NULL OR `p`.`DIM_Location` = '9' AND `p`.`DIM_Location` IS NOT NULL OR `p`.`DIM_Location` = '0' AND `p`.`DIM_Location` IS NOT NULL) AND
	(`p`.`DIM_MSegment` IS NULL OR `p`.`DIM_MSegment` = '' AND `p`.`DIM_MSegment` IS NOT NULL OR `p`.`DIM_MSegment` = '1' AND `p`.`DIM_MSegment` IS NOT NULL OR `p`.`DIM_MSegment` = '2' AND `p`.`DIM_MSegment` IS NOT NULL OR `p`.`DIM_MSegment` = '3' AND `p`.`DIM_MSegment` IS NOT NULL OR `p`.`DIM_MSegment` = '4' AND `p`.`DIM_MSegment` IS NOT NULL OR `p`.`DIM_MSegment` = '5' AND `p`.`DIM_MSegment` IS NOT NULL OR `p`.`DIM_MSegment` = '6' AND `p`.`DIM_MSegment` IS NOT NULL OR `p`.`DIM_MSegment` = '7' AND `p`.`DIM_MSegment` IS NOT NULL OR `p`.`DIM_MSegment` = '8' AND `p`.`DIM_MSegment` IS NOT NULL OR `p`.`DIM_MSegment` = '9' AND `p`.`DIM_MSegment` IS NOT NULL OR `p`.`DIM_MSegment` = '0' AND `p`.`DIM_MSegment` IS NOT NULL) AND
	(`p`.`DIM_Make` IS NULL OR `p`.`DIM_Make` = '' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '1' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '2' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '3' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '4' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '5' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '6' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '7' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '8' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '9' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '0' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '1' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '2' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '3' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '4' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '5' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '6' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '7' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '8' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '9' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '0' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '1' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '2' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '3' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '4' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '5' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '6' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '7' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '8' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '9' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '0' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '1' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '2' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '3' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '4' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '5' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '6' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '7' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '8' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '9' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '0' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '1' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '2' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '3' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '4' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '5' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '6' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '7' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '8' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '9' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '0' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '1' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '2' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '3' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '4' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '5' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '6' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '7' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '8' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '9' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '0' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '1' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '2' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '3' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '4' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '5' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '6' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '7' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '8' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '9' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '0' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '1' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '2' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '3' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '4' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '5' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '6' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '7' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '8' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '9' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '0' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '1' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '2' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '3' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '4' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '5' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '6' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '7' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '8' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '9' AND `p`.`DIM_Make` IS NOT NULL OR `p`.`DIM_Make` = '0' AND `p`.`DIM_Make` IS NOT NULL)
LIMIT 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue3674Tests`

