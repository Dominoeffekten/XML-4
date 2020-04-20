var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { 
    title: 'Express og XML',
    h2: 'Express og XML',
  });
});

router.get('/xslt', function (req, res, next) {
    res.render('xslt', {
      title: 'Test XSLT on the Client',
      h2: 'XSLT',
    });
});

module.exports = router;