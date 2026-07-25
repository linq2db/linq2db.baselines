-- Firebird.3 Firebird3
DELETE FROM
	l2dbnh_authorbook t1


-- Firebird.3 Firebird3
DELETE FROM
	l2dbnh_books t1


-- Firebird.3 Firebird3
DELETE FROM
	l2dbnh_authors t1


select gen_id(hibernate_sequence, 1 ) from RDB$DATABASE

select gen_id(hibernate_sequence, 1 ) from RDB$DATABASE

select gen_id(hibernate_sequence, 1 ) from RDB$DATABASE

select gen_id(hibernate_sequence, 1 ) from RDB$DATABASE

select gen_id(hibernate_sequence, 1 ) from RDB$DATABASE

INSERT INTO l2dbnh_authors (name, id) VALUES (@p0, @p1);@p0 = 'Asimov' [Type: String (6:0:0)], @p1 = 26 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_authors (name, id) VALUES (@p0, @p1);@p0 = 'Clarke' [Type: String (6:0:0)], @p1 = 27 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_books (title, id) VALUES (@p0, @p1);@p0 = 'Foundation' [Type: String (10:0:0)], @p1 = 28 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_books (title, id) VALUES (@p0, @p1);@p0 = 'I, Robot' [Type: String (8:0:0)], @p1 = 29 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_books (title, id) VALUES (@p0, @p1);@p0 = '2001' [Type: String (4:0:0)], @p1 = 30 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_authorbook (authorid, bookid) VALUES (@p0, @p1);@p0 = 26 [Type: Int32 (0:0:0)], @p1 = 28 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_authorbook (authorid, bookid) VALUES (@p0, @p1);@p0 = 26 [Type: Int32 (0:0:0)], @p1 = 29 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_authorbook (authorid, bookid) VALUES (@p0, @p1);@p0 = 27 [Type: Int32 (0:0:0)], @p1 = 30 [Type: Int32 (0:0:0)]

-- Firebird.3 Firebird3
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
			b.authorid = a.id AND o.title STARTING WITH 'F'
	)
ORDER BY
	a.name


select author0_.name as col_0_0_ from l2dbnh_authors author0_ where exists (select book2_.id from l2dbnh_authorbook books1_, l2dbnh_books book2_ where author0_.id=books1_.authorid and books1_.bookid=book2_.id and (book2_.title like (cast(@p0 as VARCHAR(4000)) || '%'))) order by author0_.name asc;@p0 = 'F' [Type: String (1:0:0)]

