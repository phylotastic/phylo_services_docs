#### How to run the tests:

1. First, generate the work directory by running the following command.

```bash
make work/requests.json
```

2. Then to run tests for single web service, use the test file name of that web service. For example, to run the *find_names_from_text* (GNRD wrapper_text) web service, use the following command. 

```bash
python tests/test_fn_names_text.py --verbose
```

#### Some errors that need to be fixed in case of failure in make command or running tests command:

1. In line __55__ of __doc_examples.py__ file, there is an extra parenthesis. It needs to be removed to run the make command. 
2. In line __17__ of __test_fn_names_text.py__ file, resource file name should be `test-sample.txt`. Need to replace `test-sample` with `test-sample.txt`.
3. In line __4__ of __test_tnrs_gnr_names.py__ file, there is a SyntaxError: EOL while scanning string literal ; missing single quote in sys.path.append('./). Correct it by replacing ```sys.path.append('./)``` with ```sys.path.append('./')``` 
                       

#### Test results: 

Below are the results of tests run for individual web services.

__Command__:

```bash
python tests/test_fn_names_text.py --verbose
```
__Result__:

```
Read 50 requests from work/requests.json
No exhanges file: work/exchanges.json
test_engines (__main__.TestFnNamesText)
It looks like engines 6, 7, and 8 are all the same. ... ok
test_example_4 (__main__.TestFnNamesText) ... ok
test_example_5 (__main__.TestFnNamesText) ... ok
test_large_input (__main__.TestFnNamesText)
Test large input. ... ok
test_no_parameter (__main__.TestFnNamesText)
No parameters.  Should yield some kind of error. ... ok

Slowest exchange for http://phylo.cs.nmsu.edu:5004/phylotastic_ws/fn/names_text: 1.23893713951

----------------------------------------------------------------------
Ran 5 tests in 10.844s

OK
```

---

__Command__:

```bash
python tests/test_fn_names_url.py --verbose
```
__Result__:

```
Read 50 requests from work/requests.json
No exhanges file: work/exchanges.json
test_bad_type (__main__.TestFnNamesUrl)
See what happens when you give it a file of an unrecognized type. ... ok
test_example_1 (__main__.TestFnNamesUrl)
Try example from the documentation ... ok
test_example_2 (__main__.TestFnNamesUrl) ... ok
test_example_3 (__main__.TestFnNamesUrl) ... ok
test_large_input (__main__.TestFnNamesUrl)
Test large input. ... 
Be patient, takes four minutes
ok
test_no_parameter (__main__.TestFnNamesUrl)
See how a call with no parameters is handled. ... ok
test_non_http_uri (__main__.TestFnNamesUrl)
Try a non-HTTP URI. ... ok
test_nonexistent (__main__.TestFnNamesUrl)
Nonexistent target. ... ok

Slowest exchange for http://phylo.cs.nmsu.edu:5004/phylotastic_ws/fn/names_url: 247.780116081

----------------------------------------------------------------------
Ran 8 tests in 259.482s

OK
```
--- 

__Command__:

```bash
python tests/test_gt_pm_get_tree.py --verbose
```
__Result__:

```
Read 50 requests from work/requests.json
No exhanges file: work/exchanges.json
test_bad_names (test_gt_ot_get_tree.GtTreeTester)
Try a set of names none of which will be seen as a taxon name. ... skipped "can't test superclass"
test_bigger_and_bigger (test_gt_ot_get_tree.GtTreeTester)
Try the service with increasingly long name lists. ... skipped 'temporarily'
test_example_12 (test_gt_ot_get_tree.GtTreeTester)
Note: The example_12 tree includes both Formicinae and Aculeata, but the response ... ok
test_example_13 (test_gt_ot_get_tree.GtTreeTester) ... ok
test_no_names (test_gt_ot_get_tree.GtTreeTester)
See what happens if there are no names.  Expect a 400. ... skipped "can't test superclass"
test_no_parameter (test_gt_ot_get_tree.GtTreeTester)
See what happens when there are no parameters. ... skipped "can't test superclass"
test_some_bad (test_gt_ot_get_tree.GtTreeTester)
Two good names, one bad. ... skipped "can't test superclass"
skipped "can't test superclass"
test_bad_names (__main__.TestGtPmGetTree)
Try a set of names none of which will be seen as a taxon name. ... ok
test_bigger_and_bigger (__main__.TestGtPmGetTree)
Try the service with increasingly long name lists. ... skipped 'temporarily'
test_example_12 (__main__.TestGtPmGetTree)
Note: The example_12 tree includes both Formicinae and Aculeata, but the response ... ok
test_example_13 (__main__.TestGtPmGetTree) ... ok
test_example_40 (__main__.TestGtPmGetTree) ... ok
test_example_41 (__main__.TestGtPmGetTree) ... ok
test_no_names (__main__.TestGtPmGetTree)
See what happens if there are no names.  Expect a 400. ... ok
test_no_parameter (__main__.TestGtPmGetTree)
See what happens when there are no parameters. ... ok
test_some_bad (__main__.TestGtPmGetTree)
Two good names, one bad. ... ok

Slowest exchange for http://phylo.cs.nmsu.edu:5004/phylotastic_ws/gt/pm/get_tree: 2.45521497726

----------------------------------------------------------------------
Ran 16 tests in 18.610s

OK (skipped=7)
```

---

__Command__:

```bash
python tests/test_gt_pm_tree.py --verbose
```

__Result__:
```
Read 50 requests from work/requests.json
No exhanges file: work/exchanges.json
test_bad_names (test_gt_ot_get_tree.GtTreeTester)
Try a set of names none of which will be seen as a taxon name. ... skipped "can't test superclass"
test_bigger_and_bigger (test_gt_ot_get_tree.GtTreeTester)
Try the service with increasingly long name lists. ... skipped 'temporarily'
test_example_12 (test_gt_ot_get_tree.GtTreeTester)
Note: The example_12 tree includes both Formicinae and Aculeata, but the response ... ok
test_example_13 (test_gt_ot_get_tree.GtTreeTester) ... ok
test_no_names (test_gt_ot_get_tree.GtTreeTester)
See what happens if there are no names.  Expect a 400. ... skipped "can't test superclass"
test_no_parameter (test_gt_ot_get_tree.GtTreeTester)
See what happens when there are no parameters. ... skipped "can't test superclass"
test_some_bad (test_gt_ot_get_tree.GtTreeTester)
Two good names, one bad. ... skipped "can't test superclass"
skipped "can't test superclass"
test_bad_names (__main__.TestGtPmTree)
Try a set of names none of which will be seen as a taxon name. ... FAIL
test_bigger_and_bigger (__main__.TestGtPmTree)
Try the service with increasingly long name lists. ... skipped 'temporarily'
test_example_12 (__main__.TestGtPmTree)
Note: The example_12 tree includes both Formicinae and Aculeata, but the response ... ok
test_example_13 (__main__.TestGtPmTree) ... ok
test_example_42 (__main__.TestGtPmTree) ... FAIL
test_example_43 (__main__.TestGtPmTree) ... ok
test_no_names (__main__.TestGtPmTree)
See what happens if there are no names.  Expect a 400. ... ok
test_no_parameter (__main__.TestGtPmTree)
See what happens when there are no parameters. ... ok
test_some_bad (__main__.TestGtPmTree)
Two good names, one bad. ... FAIL

Slowest exchange for http://phylo.cs.nmsu.edu:5004/phylotastic_ws/gt/pm/tree: 2.51259708405

======================================================================
FAIL: test_bad_names (__main__.TestGtPmTree)
Try a set of names none of which will be seen as a taxon name.
----------------------------------------------------------------------
Traceback (most recent call last):
  File "/home/tayeen/tryphy-master/tests/test_gt_ot_get_tree.py", line 85, in test_bad_names
    'no "least" in message: "%s"' % mess)
AssertionError: no "least" in message: "Error: Missing parameter 'taxa'"

======================================================================
FAIL: test_example_42 (__main__.TestGtPmTree)
----------------------------------------------------------------------
Traceback (most recent call last):
  File "tests/test_gt_pm_tree.py", line 30, in test_example_42
    self.assert_success(x)
  File "./webapp.py", line 247, in assert_success
    self.assertEqual(j[u'message'], u'Success')
AssertionError: u'No tree found using phylomatic web service' != u'Success'
- No tree found using phylomatic web service
+ Success


======================================================================
FAIL: test_some_bad (__main__.TestGtPmTree)
Two good names, one bad.
----------------------------------------------------------------------
Traceback (most recent call last):
  File "/home/tayeen/tryphy-master/tests/test_gt_ot_get_tree.py", line 99, in test_some_bad
    self.assert_success(x, mess)
  File "./webapp.py", line 244, in assert_success
    self.assert_response_status(x, 200, message)
  File "./webapp.py", line 263, in assert_response_status
    self.assertEqual(x.status_code, code, message)
AssertionError: Error: Missing parameter 'taxa'

----------------------------------------------------------------------
Ran 16 tests in 14.534s

FAILED (failures=3, skipped=7)
=========================================================
```

---

__Command__:

```bash
python tests/test_si_eol_get_images.py --verbose
```
__Result__:

```
Read 50 requests from work/requests.json
No exhanges file: work/exchanges.json
test_bad_method (__main__.SiEolImagesTester) ... FAIL
test_bad_name (__main__.SiEolImagesTester) ... FAIL
test_bad_parameter (__main__.SiEolImagesTester)
What if the supplied parameter name is wrong?  Similar to previous ... ok
test_bad_value_type (__main__.SiEolImagesTester)
What if the value is a single species name instead of a list? ... Patience, this may take 20 seconds
FAIL
test_no_parameter (__main__.SiEolImagesTester) ... ok
skipped "can't test superclass"
test_bad_method (__main__.TestSiEolGetImages)
What if you do a GET when the service is expecting a POST? ... FAIL
test_bad_name (__main__.TestSiEolGetImages) ... FAIL
test_bad_parameter (__main__.TestSiEolGetImages)
What if the supplied parameter name is wrong?  Similar to previous ... ok
test_bad_value_type (__main__.TestSiEolGetImages)
What if the value is a single species name instead of a list? ... Patience, this may take 20 seconds
FAIL
test_example_19 (__main__.TestSiEolGetImages) ... ok
test_no_parameter (__main__.TestSiEolGetImages) ... ok

Slowest exchange for http://phylo.cs.nmsu.edu:5004/phylotastic_ws/si/eol/get_images: 2.67613697052

======================================================================
FAIL: test_bad_method (__main__.SiEolImagesTester)
----------------------------------------------------------------------
Traceback (most recent call last):
  File "tests/test_si_eol_get_images.py", line 18, in test_bad_method
    self.assertEqual(x.status_code, 405)
AssertionError: 400 != 405

======================================================================
FAIL: test_bad_name (__main__.SiEolImagesTester)
----------------------------------------------------------------------
Traceback (most recent call last):
  File "tests/test_si_eol_get_images.py", line 58, in test_bad_name
    self.assert_success(x, m)
  File "./webapp.py", line 244, in assert_success
    self.assert_response_status(x, 200, message)
  File "./webapp.py", line 263, in assert_response_status
    self.assertEqual(x.status_code, code, message)
AssertionError: Error: Missing parameter 'species'

======================================================================
FAIL: test_bad_value_type (__main__.SiEolImagesTester)
What if the value is a single species name instead of a list?
----------------------------------------------------------------------
Traceback (most recent call last):
  File "tests/test_si_eol_get_images.py", line 47, in test_bad_value_type
    self.assertTrue(x.status_code % 100 == 4, x.status_code)
AssertionError: 400

======================================================================
FAIL: test_bad_method (__main__.TestSiEolGetImages)
What if you do a GET when the service is expecting a POST?
----------------------------------------------------------------------
Traceback (most recent call last):
  File "tests/test_si_eol_get_images.py", line 87, in test_bad_method
    self.assertEqual(x.status_code, 405)
AssertionError: 400 != 405

======================================================================
FAIL: test_bad_name (__main__.TestSiEolGetImages)
----------------------------------------------------------------------
Traceback (most recent call last):
  File "tests/test_si_eol_get_images.py", line 58, in test_bad_name
    self.assert_success(x, m)
  File "./webapp.py", line 244, in assert_success
    self.assert_response_status(x, 200, message)
  File "./webapp.py", line 263, in assert_response_status
    self.assertEqual(x.status_code, code, message)
AssertionError: Error: Missing parameter 'species'

======================================================================
FAIL: test_bad_value_type (__main__.TestSiEolGetImages)
What if the value is a single species name instead of a list?
----------------------------------------------------------------------
Traceback (most recent call last):
  File "tests/test_si_eol_get_images.py", line 47, in test_bad_value_type
    self.assertTrue(x.status_code % 100 == 4, x.status_code)
AssertionError: 400

----------------------------------------------------------------------
Ran 11 tests in 3.039s

FAILED (failures=6, skipped=1)
```

---

__Command__:

```bash
python tests/test_sl_eol_links.py --verbose
```
__Result__:

```
Read 50 requests from work/requests.json
No exhanges file: work/exchanges.json
test_bad_parameter (test_sl_eol_get_links.SlEolGetLinksTester)
What if the supplied parameter has the wrong name?  (Hoping for 400.) ... skipped "can't test superclass"
test_bad_species (test_sl_eol_get_links.SlEolGetLinksTester)
What if the species name is unknown? ... skipped "can't test superclass"
test_no_parameter (test_sl_eol_get_links.SlEolGetLinksTester)
What if no parameters are supplied?  (Hoping for 400.) ... skipped "can't test superclass"
skipped "can't test superclass"
test_bad_parameter (__main__.TestSlEolLinks)
What if the supplied parameter has the wrong name?  (Hoping for 400.) ... ok
test_bad_species (__main__.TestSlEolLinks)
What if the species name is unknown? ... FAIL
test_example_24 (__main__.TestSlEolLinks) ... ok
test_no_parameter (__main__.TestSlEolLinks)
What if no parameters are supplied?  (Hoping for 400.) ... FAIL

Slowest exchange for http://phylo.cs.nmsu.edu:5004/phylotastic_ws/sl/eol/links: 5.12136888504

======================================================================
FAIL: test_bad_species (__main__.TestSlEolLinks)
What if the species name is unknown?
----------------------------------------------------------------------
Traceback (most recent call last):
  File "/home/tayeen/tryphy-master/tests/test_sl_eol_get_links.py", line 50, in test_bad_species
    self.assertEqual(x.json()[u'species'][0][u'matched_name'], '')
AssertionError: u'Macronectes halli Mathews 1912' != ''

======================================================================
FAIL: test_no_parameter (__main__.TestSlEolLinks)
What if no parameters are supplied?  (Hoping for 400.)
----------------------------------------------------------------------
Traceback (most recent call last):
  File "/home/tayeen/tryphy-master/tests/test_sl_eol_get_links.py", line 27, in test_no_parameter
    self.assert_response_status(x, 400)
  File "./webapp.py", line 263, in assert_response_status
    self.assertEqual(x.status_code, code, message)
AssertionError: 500 Error: 'NoneType' object has no attribute '__getitem__'

----------------------------------------------------------------------
Ran 7 tests in 5.701s

FAILED (failures=2, skipped=4)
```

---

__Command__:

```bash
python tests/test_ts_all_species.py --verbose
```

__Result__:

```
Read 50 requests from work/requests.json
No exhanges file: work/exchanges.json
test_bad_name (__main__.TestTsAllSpecies) ... FAIL
test_big_family (__main__.TestTsAllSpecies)
The documentation suggests that you can use the service on families. ... skipped 'takes too long'
test_example_15 (__main__.TestTsAllSpecies) ... ok
test_example_16 (__main__.TestTsAllSpecies) ... ok
test_nested_sequence (__main__.TestTsAllSpecies)
Try progressively larger taxa to see when the service breaks. ... Apis mellifera: 1 0.396286010742
Apis: 24 0.332272052765
Apini: 24 0.31257390976
Apinae: 1269 0.337958812714
Apidae: 5680 0.378472089767
ok
test_no_parameter (__main__.TestTsAllSpecies) ... ok

Slowest exchange for http://phylo.cs.nmsu.edu:5004/phylotastic_ws/ts/all_species: 0.396286010742

======================================================================
FAIL: test_bad_name (__main__.TestTsAllSpecies)
----------------------------------------------------------------------
Traceback (most recent call last):
  File "tests/test_ts_all_species.py", line 27, in test_bad_name
    self.assertTrue(x.status_code >= 400, '%s: %s' % (x.status_code, m))
AssertionError: 200: No Taxon matched with Nosuchtaxonia

----------------------------------------------------------------------
Ran 6 tests in 4.093s

FAILED (failures=1, skipped=1)
```
---

__Command__:

```bash
python tests/test_ts_country_species.py --verbose
```

__Result__:

```
Read 50 requests from work/requests.json
No exhanges file: work/exchanges.json
test_bad_country (__main__.TestTsCountrySpecies)
See what happens if the country is likely to be unknown. ... skipped 'hangs'
test_bad_taxon (__main__.TestTsCountrySpecies) ... FAIL
test_example_17 (__main__.TestTsCountrySpecies) ... ok
test_example_17p (__main__.TestTsCountrySpecies)
2017-11-05 This test complains about the 'taxon' parameter being ... FAIL
test_example_18 (__main__.TestTsCountrySpecies) ... ok
test_no_parameter (__main__.TestTsCountrySpecies) ... ok

Slowest exchange for http://phylo.cs.nmsu.edu:5004/phylotastic_ws/ts/country_species: 0.351470947266

======================================================================
FAIL: test_bad_taxon (__main__.TestTsCountrySpecies)
----------------------------------------------------------------------
Traceback (most recent call last):
  File "tests/test_ts_country_species.py", line 30, in test_bad_taxon
    self.assertTrue(x.status_code >= 400, m)
AssertionError: No Taxon matched with Nosuchtaxonia

======================================================================
FAIL: test_example_17p (__main__.TestTsCountrySpecies)
2017-11-05 This test complains about the 'taxon' parameter being
----------------------------------------------------------------------
Traceback (most recent call last):
  File "tests/test_ts_country_species.py", line 70, in test_example_17p
    self.assert_success(x, m)
  File "./webapp.py", line 244, in assert_success
    self.assert_response_status(x, 200, message)
  File "./webapp.py", line 263, in assert_response_status
    self.assertEqual(x.status_code, code, message)
AssertionError: Error: Missing parameter 'taxon'

----------------------------------------------------------------------
Ran 6 tests in 1.166s

FAILED (failures=2, skipped=1)
```

---

__Command__:

```bash
python tests/test_ts_ncbi_genome_species.py --verbose
```

__Result__:

```
Read 50 requests from work/requests.json
No exhanges file: work/exchanges.json
test_bad_parameter_name (__main__.TestTsNcbiGenomeSpecies)
What if we give it an unknown parameter name? ... FAIL
test_bad_taxon (__main__.TestTsNcbiGenomeSpecies)
What if the taxon is unknown? ... FAIL
test_example_21 (__main__.TestTsNcbiGenomeSpecies) ... ok
test_example_22 (__main__.TestTsNcbiGenomeSpecies) ... ok
test_example_22_post (__main__.TestTsNcbiGenomeSpecies) ... FAIL
test_no_parameter (__main__.TestTsNcbiGenomeSpecies)
What is we give the service no parameters?  Hoping for 400. ... ok

Slowest exchange for http://phylo.cs.nmsu.edu:5004/phylotastic_ws/ts/ncbi/genome_species: 6.7264020443

======================================================================
FAIL: test_bad_parameter_name (__main__.TestTsNcbiGenomeSpecies)
What if we give it an unknown parameter name?
----------------------------------------------------------------------
Traceback (most recent call last):
  File "tests/test_ts_ncbi_genome_species.py", line 41, in test_bad_parameter_name
    self.assertEqual(x.status_code, 400, mess)
AssertionError: Success

======================================================================
FAIL: test_bad_taxon (__main__.TestTsNcbiGenomeSpecies)
What if the taxon is unknown?
----------------------------------------------------------------------
Traceback (most recent call last):
  File "tests/test_ts_ncbi_genome_species.py", line 55, in test_bad_taxon
    self.assertEqual(x.status_code, 400, mess)
AssertionError: No match found for term Unknownia

======================================================================
FAIL: test_example_22_post (__main__.TestTsNcbiGenomeSpecies)
----------------------------------------------------------------------
Traceback (most recent call last):
  File "tests/test_ts_ncbi_genome_species.py", line 90, in test_example_22_post
    self.assert_success(x)
  File "./webapp.py", line 244, in assert_success
    self.assert_response_status(x, 200, message)
  File "./webapp.py", line 263, in assert_response_status
    self.assertEqual(x.status_code, code, message)
AssertionError: 400 Error: Missing parameter 'taxon'

----------------------------------------------------------------------
Ran 6 tests in 12.276s

FAILED (failures=3)
```

---

__Command__:

```bash
python tests/test_tnrs_ot_names.py --verbose
```

__Result__:

```
Read 50 requests from work/requests.json
No exhanges file: work/exchanges.json
test_2 (__main__.TestTnrsOtNames)
Edge case: names= is supplied, but there are no names. ... ok
test_3 (__main__.TestTnrsOtNames)
Ensure that the result we get is 'correct' per documentation. ... ok
test_4 (__main__.TestTnrsOtNames)
What if one of the names is misspelled? ... ok
test_5 (__main__.TestTnrsOtNames) ... ok
test_big_request (__main__.TestTnrsOtNames)
Try a request with many copies of the same name. ... skipped 'temporarily to save time'
test_example_8 (__main__.TestTnrsOtNames) ... ok
test_no_parameter (__main__.TestTnrsOtNames)
Edge case: ... {'status_code': 500, 'request': None, 'response': {u'message': u"Error: 'NoneType' object has no attribute '__getitem__'"}, 'content_type': 'application/json', 'time': 0.44210004806518555}
FAIL

Slowest exchange for http://phylo.cs.nmsu.edu:5004/phylotastic_ws/tnrs/ot/names: 0.504943132401
test_3 (test_tnrs_ot_resolve.TnrsTester)
Ensure that the result we get is 'correct' per documentation. ... skipped "can't test superclass"
test_4 (test_tnrs_ot_resolve.TnrsTester)
What if one of the names is misspelled? ... skipped "can't test superclass"
test_5 (test_tnrs_ot_resolve.TnrsTester) ... skipped "can't test superclass"
test_big_request (test_tnrs_ot_resolve.TnrsTester)
Try a request with many copies of the same name. ... skipped 'temporarily to save time'
test_no_parameter (test_tnrs_ot_resolve.TnrsTester)
Edge case: ... skipped "can't test superclass"
skipped "can't test superclass"

======================================================================
FAIL: test_no_parameter (__main__.TestTnrsOtNames)
Edge case:
----------------------------------------------------------------------
Traceback (most recent call last):
  File "/home/tayeen/tryphy-master/tests/test_tnrs_ot_resolve.py", line 49, in test_no_parameter
    self.assert_response_status(x, 400)
  File "./webapp.py", line 263, in assert_response_status
    self.assertEqual(x.status_code, code, message)
AssertionError: 500 Error: 'NoneType' object has no attribute '__getitem__'

----------------------------------------------------------------------
Ran 12 tests in 2.557s

FAILED (failures=1, skipped=7)
```

---

__Command__:

```bash
python tests/test_tnrs_ot_resolve.py --verbose
```

__Result__:

```
Read 50 requests from work/requests.json
No exhanges file: work/exchanges.json
test_2 (__main__.TestTnrsOtResolve)
Edge case: names= is supplied, but there are no names. ... ok
test_3 (__main__.TestTnrsOtResolve)
Ensure that the result we get is 'correct' per documentation. ... ok
test_4 (__main__.TestTnrsOtResolve)
What if one of the names is misspelled? ... ok
test_5 (__main__.TestTnrsOtResolve) ... ok
test_big_request (__main__.TestTnrsOtResolve)
Try a request with many copies of the same name. ... skipped 'temporarily to save time'
test_example_6 (__main__.TestTnrsOtResolve) ... ok
test_example_7 (__main__.TestTnrsOtResolve) ... ok
test_no_parameter (__main__.TestTnrsOtResolve)
Edge case: ... {'status_code': 400, 'request': None, 'response': {u'message': u"Error: Missing parameter 'names'"}, 'content_type': 'application/json', 'time': 2.6731150150299072}
ok

Slowest exchange for http://phylo.cs.nmsu.edu:5004/phylotastic_ws/tnrs/ot/resolve: 5.45945692062
test_3 (__main__.TnrsTester)
Ensure that the result we get is 'correct' per documentation. ... skipped "can't test superclass"
test_4 (__main__.TnrsTester)
What if one of the names is misspelled? ... skipped "can't test superclass"
test_5 (__main__.TnrsTester) ... skipped "can't test superclass"
test_big_request (__main__.TnrsTester)
Try a request with many copies of the same name. ... skipped 'temporarily to save time'
test_no_parameter (__main__.TnrsTester)
Edge case: ... skipped "can't test superclass"
skipped "can't test superclass"

----------------------------------------------------------------------
Ran 13 tests in 10.747s

OK (skipped=7)
```

---

__Command__:

```bash
python tests/test_tnrs_gnr_resolve.py --verbose
```

__Result__:

```
Read 50 requests from work/requests.json
No exhanges file: work/exchanges.json
test_3 (__main__.TestTnrsGnrResolve)
Ensure that the result we get is 'correct' per documentation. ... ok
test_4 (__main__.TestTnrsGnrResolve)
What if one of the names is misspelled? ... ok
test_5 (__main__.TestTnrsGnrResolve) ... ok
test_big_request (__main__.TestTnrsGnrResolve)
Try a request with many copies of the same name. ... skipped 'temporarily to save time'
test_example_10 (__main__.TestTnrsGnrResolve) ... ok
test_example_9 (__main__.TestTnrsGnrResolve) ... ok
test_no_parameter (__main__.TestTnrsGnrResolve)
Edge case: ... {'status_code': 400, 'request': None, 'response': {u'message': u"Error: Missing parameter 'names'"}, 'content_type': 'application/json', 'time': 0.1300640106201172}
ok

Slowest exchange for http://phylo.cs.nmsu.edu:5004/phylotastic_ws/tnrs/gnr/resolve: 0.891243934631
test_3 (test_tnrs_ot_resolve.TnrsTester)
Ensure that the result we get is 'correct' per documentation. ... skipped "can't test superclass"
test_4 (test_tnrs_ot_resolve.TnrsTester)
What if one of the names is misspelled? ... skipped "can't test superclass"
test_5 (test_tnrs_ot_resolve.TnrsTester) ... skipped "can't test superclass"
test_big_request (test_tnrs_ot_resolve.TnrsTester)
Try a request with many copies of the same name. ... skipped 'temporarily to save time'
test_no_parameter (test_tnrs_ot_resolve.TnrsTester)
Edge case: ... skipped "can't test superclass"
skipped "can't test superclass"

----------------------------------------------------------------------
Ran 12 tests in 3.353s

OK (skipped=7)
```

---

__Command__:

```bash
python tests/test_gt_ot_get_tree.py --verbose
```

__Result__:

```
Read 50 requests from work/requests.json
No exhanges file: work/exchanges.json
test_bad_names (__main__.GtTreeTester)
Try a set of names none of which will be seen as a taxon name. ... skipped "can't test superclass"
test_bigger_and_bigger (__main__.GtTreeTester)
Try the service with increasingly long name lists. ... skipped 'temporarily'
test_example_12 (__main__.GtTreeTester)
Note: The example_12 tree includes both Formicinae and Aculeata, but the response ... ok
test_example_13 (__main__.GtTreeTester) ... ok
test_no_names (__main__.GtTreeTester)
See what happens if there are no names.  Expect a 400. ... skipped "can't test superclass"
test_no_parameter (__main__.GtTreeTester)
See what happens when there are no parameters. ... skipped "can't test superclass"
test_some_bad (__main__.GtTreeTester)
Two good names, one bad. ... skipped "can't test superclass"
skipped "can't test superclass"
test_bad_names (__main__.TestGtOtGetTree)
Try a set of names none of which will be seen as a taxon name. ... ok
test_bigger_and_bigger (__main__.TestGtOtGetTree)
Try the service with increasingly long name lists. ... skipped 'temporarily'
test_example_12 (__main__.TestGtOtGetTree)
Note: The example_12 tree includes both Formicinae and Aculeata, but the response ... ok
test_example_13 (__main__.TestGtOtGetTree) ... ok
test_no_names (__main__.TestGtOtGetTree)
See what happens if there are no names.  Expect a 400. ... ok
test_no_parameter (__main__.TestGtOtGetTree)
See what happens when there are no parameters. ... ok
test_some_bad (__main__.TestGtOtGetTree)
Two good names, one bad. ... ok

Slowest exchange for http://phylo.cs.nmsu.edu:5004/phylotastic_ws/gt/ot/get_tree: 3.44231510162

----------------------------------------------------------------------
Ran 14 tests in 22.586s

OK (skipped=7)
```

---

__Command__:

```bash
python tests/test_gt_ot_tree.py --verbose
```

__Result__:

```
Read 50 requests from work/requests.json
No exhanges file: work/exchanges.json
test_bad_names (test_gt_ot_get_tree.GtTreeTester)
Try a set of names none of which will be seen as a taxon name. ... skipped "can't test superclass"
test_bigger_and_bigger (test_gt_ot_get_tree.GtTreeTester)
Try the service with increasingly long name lists. ... skipped 'temporarily'
test_example_12 (test_gt_ot_get_tree.GtTreeTester)
Note: The example_12 tree includes both Formicinae and Aculeata, but the response ... ok
test_example_13 (test_gt_ot_get_tree.GtTreeTester) ... ok
test_no_names (test_gt_ot_get_tree.GtTreeTester)
See what happens if there are no names.  Expect a 400. ... skipped "can't test superclass"
test_no_parameter (test_gt_ot_get_tree.GtTreeTester)
See what happens when there are no parameters. ... skipped "can't test superclass"
test_some_bad (test_gt_ot_get_tree.GtTreeTester)
Two good names, one bad. ... skipped "can't test superclass"
skipped "can't test superclass"
test_bad_names (__main__.TestGtOtTree)
Try a set of names none of which will be seen as a taxon name. ... FAIL
test_bigger_and_bigger (__main__.TestGtOtTree)
Try the service with increasingly long name lists. ... skipped 'temporarily'
test_example_12 (__main__.TestGtOtTree)
Note: The example_12 tree includes both Formicinae and Aculeata, but the response ... ok
test_example_13 (__main__.TestGtOtTree) ... ok
test_example_14 (__main__.TestGtOtTree) ... {
  "status_code": 500, 
  "request": null, 
  "response": {
    "message": "Error: List of resolved names empty"
  }, 
  "content_type": "application/json", 
  "time": 0.4449129104614258
FAIL
test_example_14a (__main__.TestGtOtTree) ... ok
test_no_names (__main__.TestGtOtTree)
See what happens if there are no names.  Expect a 400. ... ok
test_no_parameter (__main__.TestGtOtTree)
See what happens when there are no parameters. ... ok
test_some_bad (__main__.TestGtOtTree)
Two good names, one bad. ... FAIL

Slowest exchange for http://phylo.cs.nmsu.edu:5004/phylotastic_ws/gt/ot/tree: 1.86198997498

======================================================================
FAIL: test_bad_names (__main__.TestGtOtTree)
Try a set of names none of which will be seen as a taxon name.
----------------------------------------------------------------------
Traceback (most recent call last):
  File "/home/tayeen/tryphy-master/tests/test_gt_ot_get_tree.py", line 85, in test_bad_names
    'no "least" in message: "%s"' % mess)
AssertionError: no "least" in message: "Error: Missing parameter 'taxa'"

======================================================================
FAIL: test_example_14 (__main__.TestGtOtTree)
----------------------------------------------------------------------
Traceback (most recent call last):
  File "tests/test_gt_ot_tree.py", line 43, in test_example_14
    self.assert_success(x)
  File "/home/tayeen/tryphy-master/webapp.py", line 244, in assert_success
    self.assert_response_status(x, 200, message)
  File "/home/tayeen/tryphy-master/webapp.py", line 263, in assert_response_status
    self.assertEqual(x.status_code, code, message)
AssertionError: 500 Error: List of resolved names empty

======================================================================
FAIL: test_some_bad (__main__.TestGtOtTree)
Two good names, one bad.
----------------------------------------------------------------------
Traceback (most recent call last):
  File "/home/tayeen/tryphy-master/tests/test_gt_ot_get_tree.py", line 99, in test_some_bad
    self.assert_success(x, mess)
  File "/home/tayeen/tryphy-master/webapp.py", line 244, in assert_success
    self.assert_response_status(x, 200, message)
  File "/home/tayeen/tryphy-master/webapp.py", line 263, in assert_response_status
    self.assertEqual(x.status_code, code, message)
AssertionError: Error: Missing parameter 'taxa'

----------------------------------------------------------------------
Ran 16 tests in 17.824s

FAILED (failures=3, skipped=7)
```

---

__Command__:

```bash
python tests/test_gt_pt_get_tree.py --verbose
```

__Result__:

```
Read 50 requests from work/requests.json
No exhanges file: work/exchanges.json
test_bad_names (test_gt_ot_get_tree.GtTreeTester)
Try a set of names none of which will be seen as a taxon name. ... skipped "can't test superclass"
test_bigger_and_bigger (test_gt_ot_get_tree.GtTreeTester)
Try the service with increasingly long name lists. ... skipped 'temporarily'
test_example_12 (test_gt_ot_get_tree.GtTreeTester)
Note: The example_12 tree includes both Formicinae and Aculeata, but the response ... ok
test_example_13 (test_gt_ot_get_tree.GtTreeTester) ... ok
test_no_names (test_gt_ot_get_tree.GtTreeTester)
See what happens if there are no names.  Expect a 400. ... skipped "can't test superclass"
test_no_parameter (test_gt_ot_get_tree.GtTreeTester)
See what happens when there are no parameters. ... skipped "can't test superclass"
test_some_bad (test_gt_ot_get_tree.GtTreeTester)
Two good names, one bad. ... skipped "can't test superclass"
skipped "can't test superclass"
test_bad_names (__main__.TestGtPtGetTree)
Try a set of names none of which will be seen as a taxon name. ... ok
test_bigger_and_bigger (__main__.TestGtPtGetTree)
Try the service with increasingly long name lists. ... skipped 'temporarily'
test_example_12 (__main__.TestGtPtGetTree)
Note: The example_12 tree includes both Formicinae and Aculeata, but the response ... ok
test_example_13 (__main__.TestGtPtGetTree) ... ok
test_example_44 (__main__.TestGtPtGetTree) ... ok
test_no_names (__main__.TestGtPtGetTree)
See what happens if there are no names.  Expect a 400. ... ok
test_no_parameter (__main__.TestGtPtGetTree)
See what happens when there are no parameters. ... ok
test_some_bad (__main__.TestGtPtGetTree)
Two good names, one bad. ... ok

Slowest exchange for http://phylo.cs.nmsu.edu:5004/phylotastic_ws/gt/pt/get_tree: 4.10336995125

----------------------------------------------------------------------
Ran 15 tests in 24.016s

OK (skipped=7)
```

---

__Command__:

```bash
python tests/test_gt_pt_tree.py --verbose
```

__Result__:

```
Read 50 requests from work/requests.json
No exhanges file: work/exchanges.json
test_bad_names (test_gt_ot_get_tree.GtTreeTester)
Try a set of names none of which will be seen as a taxon name. ... skipped "can't test superclass"
test_bigger_and_bigger (test_gt_ot_get_tree.GtTreeTester)
Try the service with increasingly long name lists. ... skipped 'temporarily'
test_example_12 (test_gt_ot_get_tree.GtTreeTester)
Note: The example_12 tree includes both Formicinae and Aculeata, but the response ... ok
test_example_13 (test_gt_ot_get_tree.GtTreeTester) ... ok
test_no_names (test_gt_ot_get_tree.GtTreeTester)
See what happens if there are no names.  Expect a 400. ... skipped "can't test superclass"
test_no_parameter (test_gt_ot_get_tree.GtTreeTester)
See what happens when there are no parameters. ... skipped "can't test superclass"
test_some_bad (test_gt_ot_get_tree.GtTreeTester)
Two good names, one bad. ... skipped "can't test superclass"
skipped "can't test superclass"
test_bad_names (__main__.TestGtPtTree)
Try a set of names none of which will be seen as a taxon name. ... FAIL
test_bigger_and_bigger (__main__.TestGtPtTree)
Try the service with increasingly long name lists. ... skipped 'temporarily'
test_example_12 (__main__.TestGtPtTree)
Note: The example_12 tree includes both Formicinae and Aculeata, but the response ... ok
test_example_13 (__main__.TestGtPtTree) ... ok
test_example_45 (__main__.TestGtPtTree) ... ok
test_no_names (__main__.TestGtPtTree)
See what happens if there are no names.  Expect a 400. ... ok
test_no_parameter (__main__.TestGtPtTree)
See what happens when there are no parameters. ... ok
test_some_bad (__main__.TestGtPtTree)
Two good names, one bad. ... FAIL

Slowest exchange for http://phylo.cs.nmsu.edu:5004/phylotastic_ws/gt/pt/tree: 4.20256090164

======================================================================
FAIL: test_bad_names (__main__.TestGtPtTree)
Try a set of names none of which will be seen as a taxon name.
----------------------------------------------------------------------
Traceback (most recent call last):
  File "/home/tayeen/tryphy-master/tests/test_gt_ot_get_tree.py", line 85, in test_bad_names
    'no "least" in message: "%s"' % mess)
AssertionError: no "least" in message: "Error: Missing parameter 'taxa'"

======================================================================
FAIL: test_some_bad (__main__.TestGtPtTree)
Two good names, one bad.
----------------------------------------------------------------------
Traceback (most recent call last):
  File "/home/tayeen/tryphy-master/tests/test_gt_ot_get_tree.py", line 99, in test_some_bad
    self.assert_success(x, mess)
  File "/home/tayeen/tryphy-master/webapp.py", line 244, in assert_success
    self.assert_response_status(x, 200, message)
  File "/home/tayeen/tryphy-master/webapp.py", line 263, in assert_response_status
    self.assertEqual(x.status_code, code, message)
AssertionError: Error: Missing parameter 'taxa'

----------------------------------------------------------------------
Ran 15 tests in 16.284s

FAILED (failures=2, skipped=7)
```

---

__Command__:

```bash
python tests/test_compare_trees.py --verbose
```

__Result__:

```
Read 50 requests from work/requests.json
No exhanges file: work/exchanges.json
test_bogus_newick (__main__.TestCompareTrees)
What if the Newick is bad? ... FAIL
test_different (__main__.TestCompareTrees)
Does it always say the trees are the same? (It shouldn't.) ... {
  "status_code": 200, 
  "message": "Success", 
  "meta_data": {
    "execution_time": 0.0, 
    "creation_time": "2017-11-29T19:43:56.425160", 
    "source_urls": [
      "http://dendropy.org/library/treecompare.html#module-dendropy.calculate.treecompare"
    ]
  }, 
  "are_same_tree": false
ok
test_example_35 (__main__.TestCompareTrees)
Example service call from the documentation. ... ok
test_missing_parameter (__main__.TestCompareTrees) ... ok
test_no_parameters (__main__.TestCompareTrees)
What if no parameters are supplied? ... FAIL
test_no_parameters_2 (__main__.TestCompareTrees) ... ok

Slowest exchange for http://phylo.cs.nmsu.edu:5006/phylotastic_ws/compare_trees: 0.223650217056

======================================================================
FAIL: test_bogus_newick (__main__.TestCompareTrees)
What if the Newick is bad?
----------------------------------------------------------------------
Traceback (most recent call last):
  File "tests/test_compare_trees.py", line 40, in test_bogus_newick
    self.assert_response_status(x, 400)
  File "/home/tayeen/tryphy-master/webapp.py", line 263, in assert_response_status
    self.assertEqual(x.status_code, code, message)
AssertionError: 500 Error: global name 'Error' is not defined

======================================================================
FAIL: test_no_parameters (__main__.TestCompareTrees)
What if no parameters are supplied?
----------------------------------------------------------------------
Traceback (most recent call last):
  File "tests/test_compare_trees.py", line 20, in test_no_parameters
    self.assert_response_status(x, 400)
  File "/home/tayeen/tryphy-master/webapp.py", line 263, in assert_response_status
    self.assertEqual(x.status_code, code, message)
AssertionError: 500 Error: 'NoneType' object has no attribute '__getitem__'

----------------------------------------------------------------------
Ran 6 tests in 2.102s

FAILED (failures=2)
```

---

__Command__:

```bash
python tests/test_sc_scale.py --verbose
```

__Result__:

```
Read 50 requests from work/requests.json
No exhanges file: work/exchanges.json
test_bogus_newick (__main__.TestScScale) ... FAIL
test_example_46 (__main__.TestScScale) ... ok
test_example_47 (__main__.TestScScale) ... ok
test_no_parameters (__main__.TestScScale) ... FAIL
test_no_parameters_2 (__main__.TestScScale) ... ok

Slowest exchange for http://phylo.cs.nmsu.edu:5009/phylotastic_ws/sc/scale: 3.78632187843

======================================================================
FAIL: test_bogus_newick (__main__.TestScScale)
----------------------------------------------------------------------
Traceback (most recent call last):
  File "tests/test_sc_scale.py", line 34, in test_bogus_newick
    self.assert_response_status(x, 400)
  File "/home/tayeen/tryphy-master/webapp.py", line 263, in assert_response_status
    self.assertEqual(x.status_code, code, message)
AssertionError: 500 Error: Failed to scale from datelife R package

======================================================================
FAIL: test_no_parameters (__main__.TestScScale)
----------------------------------------------------------------------
Traceback (most recent call last):
  File "tests/test_sc_scale.py", line 22, in test_no_parameters
    self.assert_response_status(x, 400, mess)
  File "/home/tayeen/tryphy-master/webapp.py", line 263, in assert_response_status
    self.assertEqual(x.status_code, code, message)
AssertionError: Error: 'NoneType' object has no attribute '__getitem__'

----------------------------------------------------------------------
Ran 5 tests in 5.616s

FAILED (failures=2)
```
---


#### Some Comments:
----------
1. test_example_42 in __test_gt_pm_tree.py__ is not the example in the documentation. Source web service fails to get a tree, but the test expected a tree. Source web services with same functionality may differ in output and error. OpenTree and Phylomatic are not same.

2. Some cases where the service is ok, but test cases failed. 

	a) test_bad_names in test_gt_ot_get_tree.py, line 85
	b) test_some_bad in test_gt_ot_get_tree.py, line 99
	c) test_bad_name in test_si_eol_get_images.py, line 58
    d) test_no_parameter in test_sl_eol_get_links.py, line 27
	e) test_example_17p in test_ts_country_species.py, line 70
    f) test_example_22_post in test_ts_ncbi_genome_species.py, line 90, 
		curl -X POST "http://phylo.cs.nmsu.edu:5004/phylotastic_ws/ts/ncbi/genome_species" -d "taxon=Rodentia" 
		works.
    g) test_no_parameter in test_tnrs_ot_resolve.py, line 49
    h) test_no_parameters in tests/test_compare_trees.py" line 20,  

3. Error in code : 

```bash
python tests/test_si_eol_images.py --verbose
``` 

> Traceback (most recent call last): File "tests/test_si_eol_images.py", line 14, in <module> import si_eol_get_images.SiEolImagesTester
ImportError: No module named si_eol_get_images.SiEolImagesTester

4. Here the test case expects `400`. But what if the database of the source service does not have a name? How to distinguish between misspelled name and nonexistent name? 

>FAIL: test_bad_name (__main__.TestTsAllSpecies)
----------------------------------------------------------------------
Traceback (most recent call last):
  File "tests/test_ts_all_species.py", line 27, in test_bad_name
    self.assertTrue(x.status_code >= 400, '%s: %s' % (x.status_code, m))
AssertionError: 200: No Taxon matched with Nosuchtaxonia

