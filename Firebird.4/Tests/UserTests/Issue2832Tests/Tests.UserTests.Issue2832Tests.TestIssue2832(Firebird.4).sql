(102154) SELECT 
	t102154.Id = t102153.Id
FROM [DctSetpointtype(102153)] as t102153 (spt)
		LEFT JOIN (
			[VWellTree(102156)] as t102156 (t2)
				INNER JOIN [DctOu(102158)] as t102158 (tp2) ON ({t102156.ShopId?}? = {t102158.Id})
				LEFT JOIN [UacUsersDatagroup(102161)] as t102161 (cudg) ON ({t102158.Id} = {t102161.DatagroupId} AND {t102161.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(102166)] as t102166 (oudg) ON ({t102158.ParentId?}? = {t102166.DatagroupId} AND {t102166.UserId} = 150 AND {t102166.Inheritablepermission} > 0)
				INNER JOIN [Deviation(102186)] as t102186 (d) ON ({t102156.WellId?}? = {t102186.WellId})
		)  ON ({t102186.SetpointtypeId} = {t102153.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t102161.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t102166.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
