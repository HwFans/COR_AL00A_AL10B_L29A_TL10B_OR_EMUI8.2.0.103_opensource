/* Authors: Christopher Ashworth <cashworth@tresys.com>
 *          Chris PeBenito <cpebenito@tresys.com>
 *
 * Copyright (C) 2006 Tresys Technology, LLC
 *
 *  This library is free software; you can redistribute it and/or
 *  modify it under the terms of the GNU Lesser General Public
 *  License as published by the Free Software Foundation; either
 *  version 2.1 of the License, or (at your option) any later version.
 *
 *  This library is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *  Lesser General Public License for more details.
 *
 *  You should have received a copy of the GNU Lesser General Public
 *  License along with this library; if not, write to the Free Software
 *  Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 */

#ifndef __TEST_SEMANAGE_STORE_H__
#define __TEST_SEMANAGE_STORE_H__

#include <CUnit/Basic.h>

int semanage_store_test_init(void);
int semanage_store_test_cleanup(void);
int semanage_store_add_tests(CU_pSuite suite);

void test_semanage_store_access_check(void);
void test_semanage_get_lock(void);
void test_semanage_nc_sort(void);

#endif
