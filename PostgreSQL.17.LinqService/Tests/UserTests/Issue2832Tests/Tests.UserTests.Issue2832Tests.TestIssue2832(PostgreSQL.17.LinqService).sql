(106606) SELECT 
	t106606.Id = t106605.Id
FROM [DctSetpointtype(106605)] as t106605 (spt)
		LEFT JOIN (
			[VWellTree(106608)] as t106608 (t2)
				INNER JOIN [DctOu(106610)] as t106610 (tp2) ON ({t106608.ShopId?}? = {t106610.Id})
				LEFT JOIN [UacUsersDatagroup(106613)] as t106613 (cudg) ON ({t106610.Id} = {t106613.DatagroupId} AND {t106613.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(106618)] as t106618 (oudg) ON ({t106610.ParentId?}? = {t106618.DatagroupId} AND {t106618.UserId} = 150 AND {t106618.Inheritablepermission} > 0)
				INNER JOIN [Deviation(106638)] as t106638 (d) ON ({t106608.WellId?}? = {t106638.WellId})
		)  ON ({t106638.SetpointtypeId} = {t106605.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t106613.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t106618.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
