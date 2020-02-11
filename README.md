Mother ducker!!!

Don't use this. 

*664f&/@47!!

# SSDT Unit Testing sample project

## Get Started:

Install Visual Studio 2019 with the following components:
- Data Storage

Install the following extensions:
- tSQLt Test Adapter for Visual Studio 2019

The database project consists of one sample function: dbo.CalculateTaxAmount.

The test project consists of a database references (including the tSQLt framework) and one sample test class with one sample test: TestUClass.[test tax amount]

## Config changes required to reuse this solution for a different database projects:

Open the solution directory and delete the following files (if they exist):
- myDB\myDB.jfm
- myDB\myDB.dbmdl
- myDB\bin
- myDB\obj
- myDB.UnitTest\myDB.UnitTest.jfm
- myDB.UnitTest\myDB.UnitTest.dbmdl
- myDB.UnitTest\bin
- myDB.UnitTest\obj

Using a text editor, replace every instance of the string "myDB" with the new database name.
- myDB.sln (6 instances of the string)
- myDB\myDB.sqlproj (5 instances of the string)
- myDB.UnitTest\myDB.UnitTest.sqlproj (5 instances of the string)
- myDB.UnitTest\myDB.UnitTest.sqlproj.user (2 instances of the string)
- myDB.UnitTest\DebugLocalDB.publish.xml (4 instances of the string)
- myDB.UnitTest\UnitTest.RunSettings (2 instances of the string)

Rename the project directories

Press F5 to validate build and debug on LocalDB.

Then delete the file "Calculate Tax Amount" from the database project and the directory TestUClass\* from the test project.

Ready to code!


## References:

* https://www.sqlshack.com/sql-unit-testing-with-the-tsqlt-framework-for-beginners/
* https://www.sqlshack.com/tsqlt-framework-and-sql-server-database-project-integration/
* https://github.com/stephlocke/SSDTUnitTestingSampleRepo
