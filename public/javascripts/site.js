'use strict';

import {$} from './modules/nQuery.js';
import {getFileAjax} from './modules/Ajax.js';
import {getAndXSLT} from './modules/Ajax.js';

const getContentBooks = async function(ev) {
    await getAndXSLT("http://localhost:3000/xml/BooksCanon.xml",
                     "http://localhost:3000/xml/BooksCanon.xsl",
                     "contentBooks",
                     "");
};

const getContentCar = async function(ev) {
    await getAndXSLT("http://localhost:3000/xml/cars.xml",
                     "http://localhost:3000/xml/carassignment.xsl",
                     "contentCars",
                     "");
    
};

const init = function () {
    if ($('navmenu') && $('contentBooks') && $('contentCars')) {   // on the right page
        getContentBooks();
    }
};

window.addEventListener('load', init);