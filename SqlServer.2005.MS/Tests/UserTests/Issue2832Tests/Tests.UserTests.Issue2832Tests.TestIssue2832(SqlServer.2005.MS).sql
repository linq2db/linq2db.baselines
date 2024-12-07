(217122) SELECT 
	t217122.Id = t217121.Id
FROM [DctSetpointtype(217121)] as t217121 (spt)
		LEFT JOIN (
			[VWellTree(217124)] as t217124 (t2)
				INNER JOIN [DctOu(217126)] as t217126 (tp2) ON ({t217124.ShopId?}? = {t217126.Id})
				LEFT JOIN [UacUsersDatagroup(217129)] as t217129 (cudg) ON ({t217126.Id} = {t217129.DatagroupId} AND {t217129.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(217134)] as t217134 (oudg) ON ({t217126.ParentId?}? = {t217134.DatagroupId} AND {t217134.UserId} = 150 AND {t217134.Inheritablepermission} > 0)
				INNER JOIN [Deviation(217154)] as t217154 (d) ON ({t217124.WellId?}? = {t217154.WellId})
		)  ON ({t217154.SetpointtypeId} = {t217121.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t217129.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t217134.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
