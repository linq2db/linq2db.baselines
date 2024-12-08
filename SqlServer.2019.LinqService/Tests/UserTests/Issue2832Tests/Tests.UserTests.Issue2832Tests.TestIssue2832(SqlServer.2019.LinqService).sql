(245451) SELECT 
	t245451.Id = t245450.Id
FROM [DctSetpointtype(245450)] as t245450 (spt)
		LEFT JOIN (
			[VWellTree(245453)] as t245453 (t2)
				INNER JOIN [DctOu(245455)] as t245455 (tp2) ON ({t245453.ShopId?}? = {t245455.Id})
				LEFT JOIN [UacUsersDatagroup(245458)] as t245458 (cudg) ON ({t245455.Id} = {t245458.DatagroupId} AND {t245458.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245463)] as t245463 (oudg) ON ({t245455.ParentId?}? = {t245463.DatagroupId} AND {t245463.UserId} = 150 AND {t245463.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245483)] as t245483 (d) ON ({t245453.WellId?}? = {t245483.WellId})
		)  ON ({t245483.SetpointtypeId} = {t245450.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245458.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t245463.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
