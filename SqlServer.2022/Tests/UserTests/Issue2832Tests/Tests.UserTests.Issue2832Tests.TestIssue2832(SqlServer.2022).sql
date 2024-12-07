(244675) SELECT 
	t244675.Id = t244674.Id
FROM [DctSetpointtype(244674)] as t244674 (spt)
		LEFT JOIN (
			[VWellTree(244677)] as t244677 (t2)
				INNER JOIN [DctOu(244679)] as t244679 (tp2) ON ({t244677.ShopId?}? = {t244679.Id})
				LEFT JOIN [UacUsersDatagroup(244682)] as t244682 (cudg) ON ({t244679.Id} = {t244682.DatagroupId} AND {t244682.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(244687)] as t244687 (oudg) ON ({t244679.ParentId?}? = {t244687.DatagroupId} AND {t244687.UserId} = 150 AND {t244687.Inheritablepermission} > 0)
				INNER JOIN [Deviation(244707)] as t244707 (d) ON ({t244677.WellId?}? = {t244707.WellId})
		)  ON ({t244707.SetpointtypeId} = {t244674.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t244682.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t244687.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
