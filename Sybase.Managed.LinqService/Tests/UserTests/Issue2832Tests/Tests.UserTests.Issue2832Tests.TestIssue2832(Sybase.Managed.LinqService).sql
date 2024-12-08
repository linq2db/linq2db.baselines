(157136) SELECT 
	t157136.Id = t157135.Id
FROM [DctSetpointtype(157135)] as t157135 (spt)
		LEFT JOIN (
			[VWellTree(157138)] as t157138 (t2)
				INNER JOIN [DctOu(157140)] as t157140 (tp2) ON ({t157138.ShopId?}? = {t157140.Id})
				LEFT JOIN [UacUsersDatagroup(157143)] as t157143 (cudg) ON ({t157140.Id} = {t157143.DatagroupId} AND {t157143.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(157148)] as t157148 (oudg) ON ({t157140.ParentId?}? = {t157148.DatagroupId} AND {t157148.UserId} = 150 AND {t157148.Inheritablepermission} > 0)
				INNER JOIN [Deviation(157168)] as t157168 (d) ON ({t157138.WellId?}? = {t157168.WellId})
		)  ON ({t157168.SetpointtypeId} = {t157135.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t157143.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t157148.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
