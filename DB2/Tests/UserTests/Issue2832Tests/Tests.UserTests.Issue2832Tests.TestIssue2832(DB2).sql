(185611) SELECT 
	t185611.Id = t185610.Id
FROM [DctSetpointtype(185610)] as t185610 (spt)
		LEFT JOIN (
			[VWellTree(185613)] as t185613 (t2)
				INNER JOIN [DctOu(185615)] as t185615 (tp2) ON ({t185613.ShopId?}? = {t185615.Id})
				LEFT JOIN [UacUsersDatagroup(185618)] as t185618 (cudg) ON ({t185615.Id} = {t185618.DatagroupId} AND {t185618.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(185623)] as t185623 (oudg) ON ({t185615.ParentId?}? = {t185623.DatagroupId} AND {t185623.UserId} = 150 AND {t185623.Inheritablepermission} > 0)
				INNER JOIN [Deviation(185643)] as t185643 (d) ON ({t185613.WellId?}? = {t185643.WellId})
		)  ON ({t185643.SetpointtypeId} = {t185610.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t185618.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t185623.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
