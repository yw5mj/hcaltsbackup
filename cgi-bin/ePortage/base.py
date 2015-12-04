import re

def begin():
	print "Content-type: text/html"
	print ""
	print "<!DOCTYPE HTML>"
	print "<html>"

def header(title='ePortage'):
	print '''<head>
	<link rel="stylesheet" href="/static/css/bootstrap.min.css">
	<link rel="stylesheet" href="/static/css/style.css">
	<title>{0}</title>
</head>'''.format(title)

def header_redirect_module_test(card_id, serial_num, test_type):
	print '''<head>
	<meta http-equiv="refresh" content="0; url=module.py?card_id={0}&serial_num={1}#test-{2}">
</head>'''.format(card_id, serial_num, test_type)

def header_redirect_module_notes(card_id, serial_num):
	print '''<head>
	<meta http-equiv="refresh" content="0; url=module.py?card_id={0}&serial_num={1}#notes">
</head>'''.format(card_id, serial_num)

def top(title="HCAL Upgrade", subtitle="HF Frontend Quality Assurance Testing"):
	print '''<body class="custom-body">
	<div class="center-panel">
		<div style="height:300px;">
			<!--<div class="container">-->
				<div class="row">
					<!--<div align=left><img src="/us-cms.png" class="img-responsive"></div>-->
					<div align=center>
						<br>
						<h1 class="title">{0}</h1>
						<h2 class="title">{1}</h2>
						<br>
					</div>
				</div>
			<!--</div>-->
			<div class="row" align=center>
				<div class="col-md-12">
					<a href="home_page.py"><button class="home">Home</button></a>
					<a href="summary.py"><button>Summary</button></a>
					<a href="testers.py"><button>Testers</button></a>
					<a href="testSetup.py"><button>Setup</button></a>
				</div>
				<br><br><br>
			</div>
		</div>'''.format(title, subtitle)
#<a href="fwVersion.py"><button>F/W versions</button></a>

def bottom():
	print '''\t</div>
</body>
</html>'''


def cleanCGInumber(cgitext):
	if cgitext is None:
		return 0
	return int(re.sub('[^0-9]','',cgitext))

