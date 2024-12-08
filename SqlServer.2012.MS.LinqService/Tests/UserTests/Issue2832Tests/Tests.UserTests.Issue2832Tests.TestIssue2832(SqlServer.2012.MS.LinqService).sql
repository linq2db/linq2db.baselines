(240603) SELECT 
	t240603.Id = t240602.Id
FROM [DctSetpointtype(240602)] as t240602 (spt)
		LEFT JOIN (
			[VWellTree(240605)] as t240605 (t2)
				INNER JOIN [DctOu(240607)] as t240607 (tp2) ON ({t240605.ShopId?}? = {t240607.Id})
				LEFT JOIN [UacUsersDatagroup(240610)] as t240610 (cudg) ON ({t240607.Id} = {t240610.DatagroupId} AND {t240610.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(240615)] as t240615 (oudg) ON ({t240607.ParentId?}? = {t240615.DatagroupId} AND {t240615.UserId} = 150 AND {t240615.Inheritablepermission} > 0)
				INNER JOIN [Deviation(240635)] as t240635 (d) ON ({t240605.WellId?}? = {t240635.WellId})
		)  ON ({t240635.SetpointtypeId} = {t240602.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t240610.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t240615.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
