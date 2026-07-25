-- MySql.8.0.MySql.Data MySql80
DELETE  
FROM
	`l2dbnh_authorbook`


-- MySql.8.0.MySql.Data MySql80
DELETE  
FROM
	`l2dbnh_books`


-- MySql.8.0.MySql.Data MySql80
DELETE  
FROM
	`l2dbnh_authors`


INSERT INTO l2dbnh_authors (name) VALUES (?p0);SELECT LAST_INSERT_ID();?p0 = 'Asimov' [Type: String (6:0:0)]

INSERT INTO l2dbnh_authors (name) VALUES (?p0);SELECT LAST_INSERT_ID();?p0 = 'Clarke' [Type: String (6:0:0)]

INSERT INTO l2dbnh_books (title) VALUES (?p0);SELECT LAST_INSERT_ID();?p0 = 'Foundation' [Type: String (10:0:0)]

INSERT INTO l2dbnh_books (title) VALUES (?p0);SELECT LAST_INSERT_ID();?p0 = 'I, Robot' [Type: String (8:0:0)]

INSERT INTO l2dbnh_books (title) VALUES (?p0);SELECT LAST_INSERT_ID();?p0 = '2001' [Type: String (4:0:0)]

INSERT INTO l2dbnh_authorbook (authorid, bookid) VALUES (?p0, ?p1);?p0 = 3 [Type: Int32 (0:0:0)], ?p1 = 4 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_authorbook (authorid, bookid) VALUES (?p0, ?p1);?p0 = 3 [Type: Int32 (0:0:0)], ?p1 = 5 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_authorbook (authorid, bookid) VALUES (?p0, ?p1);?p0 = 4 [Type: Int32 (0:0:0)], ?p1 = 6 [Type: Int32 (0:0:0)]

-- MySql.8.0.MySql.Data MySql80
SELECT
	`a`.`id`
FROM
	`l2dbnh_authors` `a`
WHERE
	`a`.`name` = 'Asimov'
LIMIT 1


-- MySql.8.0.MySql.Data MySql80
DECLARE @asimovId Int32
SET     @asimovId = 3

SELECT
	`o`.`title`
FROM
	`l2dbnh_authors` `a`
		INNER JOIN `l2dbnh_authorbook` `j` ON `j`.`authorid` = `a`.`id`
		INNER JOIN `l2dbnh_books` `o` ON `o`.`id` = `j`.`bookid`
WHERE
	`a`.`id` = @asimovId
ORDER BY
	`o`.`title`


select book2_.title as col_0_0_ from l2dbnh_authors author0_ inner join l2dbnh_authorbook books1_ on author0_.id=books1_.authorid inner join l2dbnh_books book2_ on books1_.bookid=book2_.id where author0_.id=?p0 order by book2_.title asc;?p0 = 3 [Type: Int32 (0:0:0)]

