(245365) SELECT 
	t245365.Id = t245364.Id
FROM [DctSetpointtype(245364)] as t245364 (spt)
		LEFT JOIN (
			[VWellTree(245367)] as t245367 (t2)
				INNER JOIN [DctOu(245369)] as t245369 (tp2) ON ({t245367.ShopId?}? = {t245369.Id})
				LEFT JOIN [UacUsersDatagroup(245372)] as t245372 (cudg) ON ({t245369.Id} = {t245372.DatagroupId} AND {t245372.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245377)] as t245377 (oudg) ON ({t245369.ParentId?}? = {t245377.DatagroupId} AND {t245377.UserId} = 150 AND {t245377.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245397)] as t245397 (d) ON ({t245367.WellId?}? = {t245397.WellId})
		)  ON ({t245397.SetpointtypeId} = {t245364.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245372.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t245377.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
