(245035) SELECT 
	t245035.Id = t245034.Id
FROM [DctSetpointtype(245034)] as t245034 (spt)
		LEFT JOIN (
			[VWellTree(245037)] as t245037 (t2)
				INNER JOIN [DctOu(245039)] as t245039 (tp2) ON ({t245037.ShopId?}? = {t245039.Id})
				LEFT JOIN [UacUsersDatagroup(245042)] as t245042 (cudg) ON ({t245039.Id} = {t245042.DatagroupId} AND {t245042.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245047)] as t245047 (oudg) ON ({t245039.ParentId?}? = {t245047.DatagroupId} AND {t245047.UserId} = 150 AND {t245047.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245067)] as t245067 (d) ON ({t245037.WellId?}? = {t245067.WellId})
		)  ON ({t245067.SetpointtypeId} = {t245034.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245042.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t245047.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
