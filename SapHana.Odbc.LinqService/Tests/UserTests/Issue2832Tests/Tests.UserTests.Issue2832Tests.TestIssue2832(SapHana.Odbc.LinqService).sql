(99851) SELECT 
	t99851.Id = t99850.Id
FROM [DctSetpointtype(99850)] as t99850 (spt)
		LEFT JOIN (
			[VWellTree(99853)] as t99853 (t2)
				INNER JOIN [DctOu(99855)] as t99855 (tp2) ON ({t99853.ShopId?}? = {t99855.Id})
				LEFT JOIN [UacUsersDatagroup(99858)] as t99858 (cudg) ON ({t99855.Id} = {t99858.DatagroupId} AND {t99858.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(99863)] as t99863 (oudg) ON ({t99855.ParentId?}? = {t99863.DatagroupId} AND {t99863.UserId} = 150 AND {t99863.Inheritablepermission} > 0)
				INNER JOIN [Deviation(99883)] as t99883 (d) ON ({t99853.WellId?}? = {t99883.WellId})
		)  ON ({t99883.SetpointtypeId} = {t99850.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t99858.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t99863.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
