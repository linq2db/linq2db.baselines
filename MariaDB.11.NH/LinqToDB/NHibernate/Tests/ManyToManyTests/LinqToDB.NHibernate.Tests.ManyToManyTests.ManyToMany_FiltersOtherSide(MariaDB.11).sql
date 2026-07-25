-- MariaDB.10.MySql.Data MariaDB
DELETE  
FROM
	`l2dbnh_authorbook`


-- MariaDB.10.MySql.Data MariaDB
DELETE  
FROM
	`l2dbnh_books`


-- MariaDB.10.MySql.Data MariaDB
DELETE  
FROM
	`l2dbnh_authors`


INSERT INTO l2dbnh_authors (name) VALUES (?p0);SELECT LAST_INSERT_ID();?p0 = 'Asimov' [Type: String (6:0:0)]

INSERT INTO l2dbnh_authors (name) VALUES (?p0);SELECT LAST_INSERT_ID();?p0 = 'Clarke' [Type: String (6:0:0)]

INSERT INTO l2dbnh_books (title) VALUES (?p0);SELECT LAST_INSERT_ID();?p0 = 'Foundation' [Type: String (10:0:0)]

INSERT INTO l2dbnh_books (title) VALUES (?p0);SELECT LAST_INSERT_ID();?p0 = 'I, Robot' [Type: String (8:0:0)]

INSERT INTO l2dbnh_books (title) VALUES (?p0);SELECT LAST_INSERT_ID();?p0 = '2001' [Type: String (4:0:0)]

INSERT INTO l2dbnh_authorbook (authorid, bookid) VALUES (?p0, ?p1);?p0 = 1 [Type: Int32 (0:0:0)], ?p1 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_authorbook (authorid, bookid) VALUES (?p0, ?p1);?p0 = 1 [Type: Int32 (0:0:0)], ?p1 = 2 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_authorbook (authorid, bookid) VALUES (?p0, ?p1);?p0 = 2 [Type: Int32 (0:0:0)], ?p1 = 3 [Type: Int32 (0:0:0)]

-- MariaDB.10.MySql.Data MariaDB
SELECT
	`a`.`name`
FROM
	`l2dbnh_authors` `a`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`l2dbnh_authorbook` `b`
				INNER JOIN `l2dbnh_books` `o` ON `o`.`id` = `b`.`bookid`
		WHERE
			`b`.`authorid` = `a`.`id` AND `o`.`title` LIKE 'F%' ESCAPE '~'
	)
ORDER BY
	`a`.`name`


select author0_.name as col_0_0_ from l2dbnh_authors author0_ where exists (select book2_.id from l2dbnh_authorbook books1_, l2dbnh_books book2_ where author0_.id=books1_.authorid and books1_.bookid=book2_.id and (book2_.title like concat(?p0,'%'))) order by author0_.name asc;?p0 = 'F' [Type: String (1:0:0)]

