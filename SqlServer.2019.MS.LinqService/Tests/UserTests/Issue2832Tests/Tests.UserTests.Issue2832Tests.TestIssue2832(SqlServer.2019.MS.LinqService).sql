(246141) SELECT 
	t246141.Id = t246140.Id
FROM [DctSetpointtype(246140)] as t246140 (spt)
		LEFT JOIN (
			[VWellTree(246143)] as t246143 (t2)
				INNER JOIN [DctOu(246145)] as t246145 (tp2) ON ({t246143.ShopId?}? = {t246145.Id})
				LEFT JOIN [UacUsersDatagroup(246148)] as t246148 (cudg) ON ({t246145.Id} = {t246148.DatagroupId} AND {t246148.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(246153)] as t246153 (oudg) ON ({t246145.ParentId?}? = {t246153.DatagroupId} AND {t246153.UserId} = 150 AND {t246153.Inheritablepermission} > 0)
				INNER JOIN [Deviation(246173)] as t246173 (d) ON ({t246143.WellId?}? = {t246173.WellId})
		)  ON ({t246173.SetpointtypeId} = {t246140.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t246148.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t246153.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
