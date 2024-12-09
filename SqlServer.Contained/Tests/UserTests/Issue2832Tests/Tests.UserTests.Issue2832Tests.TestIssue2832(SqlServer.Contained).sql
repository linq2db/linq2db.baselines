(491375) SELECT 
	t491375.Id = t491374.Id
FROM [DctSetpointtype(491374)] as t491374 (spt)
		LEFT JOIN (
			[VWellTree(491377)] as t491377 (t2)
				INNER JOIN [DctOu(491379)] as t491379 (tp2) ON ({t491377.ShopId?}? = {t491379.Id})
				LEFT JOIN [UacUsersDatagroup(491382)] as t491382 (cudg) ON ({t491379.Id} = {t491382.DatagroupId} AND {t491382.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(491387)] as t491387 (oudg) ON ({t491379.ParentId?}? = {t491387.DatagroupId} AND {t491387.UserId} = 150 AND {t491387.Inheritablepermission} > 0)
				INNER JOIN [Deviation(491407)] as t491407 (d) ON ({t491377.WellId?}? = {t491407.WellId})
		)  ON ({t491407.SetpointtypeId} = {t491374.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t491382.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t491387.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
