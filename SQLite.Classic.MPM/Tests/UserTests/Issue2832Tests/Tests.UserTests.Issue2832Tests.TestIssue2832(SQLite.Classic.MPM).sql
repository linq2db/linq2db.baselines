(426166) SELECT 
	t426166.Id = t426165.Id
FROM [DctSetpointtype(426165)] as t426165 (spt)
		LEFT JOIN (
			[VWellTree(426168)] as t426168 (t2)
				INNER JOIN [DctOu(426170)] as t426170 (tp2) ON ({t426168.ShopId?}? = {t426170.Id})
				LEFT JOIN [UacUsersDatagroup(426173)] as t426173 (cudg) ON ({t426170.Id} = {t426173.DatagroupId} AND {t426173.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(426178)] as t426178 (oudg) ON ({t426170.ParentId?}? = {t426178.DatagroupId} AND {t426178.UserId} = 150 AND {t426178.Inheritablepermission} > 0)
				INNER JOIN [Deviation(426198)] as t426198 (d) ON ({t426168.WellId?}? = {t426198.WellId})
		)  ON ({t426198.SetpointtypeId} = {t426165.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t426173.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t426178.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
