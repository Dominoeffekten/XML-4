'use strict';

import {$} from './modules/nQuery.js';
import {getFileAjax} from './modules/Ajax.js';
import {getAndXSLT} from './modules/Ajax.js';

const getContentBooks = async function(ev) {
    console.log(ev);
    await getAndXSLT("http://localhost:3000/xml/BooksCanon.xml",
                     "http://localhost:3000/xml/BooksCanon.xsl",
                     "contentBooks",
                     console.log(ev),
                     ev.target.innerText);

};
const getContentCar = async function(ev) {
    console.log(ev);
    await getAndXSLT("http://localhost:3000/xml/cars.xml",
                     "http://localhost:3000/xml/carassignment.xsl",
                     "content",
                     console.log(ev),
                     ev.target.innerText);
};

const init = function () {
    if ($('navmenu') && $('contentBooks') && $('contentCars')) {   // on the right page
        getContentBooks();
    }
};

window.addEventListener('load', init);