-- Oracle.Managed Oracle12
DELETE FROM
	l2dbnh_authorbook t1


-- Oracle.Managed Oracle12
DELETE FROM
	l2dbnh_books t1


-- Oracle.Managed Oracle12
DELETE FROM
	l2dbnh_authors t1


select hibernate_sequence.nextval from dual

select hibernate_sequence.nextval from dual

select hibernate_sequence.nextval from dual

select hibernate_sequence.nextval from dual

select hibernate_sequence.nextval from dual

INSERT INTO l2dbnh_authors (name, id) VALUES (:p0, :p1);:p0 = 'Asimov' [Type: String (0:0:0)], :p1 = 26 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_authors (name, id) VALUES (:p0, :p1);:p0 = 'Clarke' [Type: String (0:0:0)], :p1 = 27 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_books (title, id) VALUES (:p0, :p1);:p0 = 'Foundation' [Type: String (0:0:0)], :p1 = 28 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_books (title, id) VALUES (:p0, :p1);:p0 = 'I, Robot' [Type: String (0:0:0)], :p1 = 29 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_books (title, id) VALUES (:p0, :p1);:p0 = '2001' [Type: String (0:0:0)], :p1 = 30 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_authorbook (authorid, bookid) VALUES (:p0, :p1);:p0 = 26 [Type: Int32 (0:0:0)], :p1 = 28 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_authorbook (authorid, bookid) VALUES (:p0, :p1);:p0 = 26 [Type: Int32 (0:0:0)], :p1 = 29 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_authorbook (authorid, bookid) VALUES (:p0, :p1);:p0 = 27 [Type: Int32 (0:0:0)], :p1 = 30 [Type: Int32 (0:0:0)]

-- Oracle.Managed Oracle12
SELECT
	a.name
FROM
	l2dbnh_authors a
WHERE
	EXISTS(
		SELECT
			*
		FROM
			l2dbnh_authorbook b
				INNER JOIN l2dbnh_books o ON o.id = b.bookid
		WHERE
			b.authorid = a.id AND o.title LIKE N'F%' ESCAPE '~'
	)
ORDER BY
	a.name


select author0_.name as col_0_0_ from l2dbnh_authors author0_ where exists (select book2_.id from l2dbnh_authorbook books1_, l2dbnh_books book2_ where author0_.id=books1_.authorid and books1_.bookid=book2_.id and (book2_.title like (:p0 || '%'))) order by author0_.name asc;:p0 = 'F' [Type: String (0:0:0)]

