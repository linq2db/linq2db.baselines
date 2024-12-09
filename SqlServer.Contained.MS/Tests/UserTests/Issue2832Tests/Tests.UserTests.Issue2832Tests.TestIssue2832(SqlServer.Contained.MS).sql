(500895) SELECT 
	t500895.Id = t500894.Id
FROM [DctSetpointtype(500894)] as t500894 (spt)
		LEFT JOIN (
			[VWellTree(500897)] as t500897 (t2)
				INNER JOIN [DctOu(500899)] as t500899 (tp2) ON ({t500897.ShopId?}? = {t500899.Id})
				LEFT JOIN [UacUsersDatagroup(500902)] as t500902 (cudg) ON ({t500899.Id} = {t500902.DatagroupId} AND {t500902.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(500907)] as t500907 (oudg) ON ({t500899.ParentId?}? = {t500907.DatagroupId} AND {t500907.UserId} = 150 AND {t500907.Inheritablepermission} > 0)
				INNER JOIN [Deviation(500927)] as t500927 (d) ON ({t500897.WellId?}? = {t500927.WellId})
		)  ON ({t500927.SetpointtypeId} = {t500894.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t500902.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t500907.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
